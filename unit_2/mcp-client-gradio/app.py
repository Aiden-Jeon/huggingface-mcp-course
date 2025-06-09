import gradio as gr
import os

from mcp import StdioServerParameters
from smolagents import InferenceClientModel, CodeAgent, ToolCollection, MCPClient

HF_TOKEN = os.getenv("HF_TOKEN")
print("HF_TOKEN", HF_TOKEN)
try:
    mcp_client = MCPClient(
        {
            "url": "http://localhost:7860/gradio_api/mcp/sse"
        }  # This is the MCP Server we created in the previous section
    )

    tools = mcp_client.get_tools()

    model = InferenceClientModel(token=HF_TOKEN)
    agent = CodeAgent(tools=[*tools], model=model)

    demo = gr.ChatInterface(
        fn=lambda message, history: str(agent.run(message)),
        type="messages",
        examples=["Prime factorization of 68"],
        title="Agent with MCP Tools",
        description="This is a simple agent that uses MCP tools to answer questions.",
    )

    demo.launch()
finally:
    mcp_client.disconnect()
