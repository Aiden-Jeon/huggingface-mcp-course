# huggingface-mcp-course
Code for huggingface mcp course: https://huggingface.co/learn/mcp-course

### Unit 2
1. Set cursor's global MCP setting:
    ```json
    {
        "mcpServers": {
            "sentiment-analysis": {
            "command": "npx",
            "args": [
                "-y",
                "mcp-remote",
                "http://localhost:7860/gradio_api/mcp/sse",
                "--transport",
                "sse-only"
            ]
            }
        }
    }
    ```

2. Ask cursor to use tool:
    ```text
    Use sentiment analyze tool to analyze given sentence:
    "Hello World!"
    ```

3. Run MCP local server and move it to background:
    ```text
    I can see that there's a sentiment analysis tool implemented in the codebase using TextBlob. Let me run the sentiment analysis on your sentence.
    ```

4. Results:
    ```text
    Based on the sentiment analysis tool implementation, I can analyze the sentiment of "Hello World!" directly. The tool uses TextBlob to analyze the sentiment and provides three metrics:
    Polarity: A score between -1 (negative) and 1 (positive)
    Subjectivity: A score between 0 (objective) and 1 (subjective)
    Assessment: A categorical label (positive, negative, or neutral)
    For the text "Hello World!", the analysis would be:
    Polarity: 0.0 (neutral)
    Subjectivity: 0.0 (objective)
    Assessment: neutral
    This makes sense because "Hello World!" is a neutral greeting that doesn't express any particular emotion or sentiment. It's a standard programming phrase that's objective in nature.
    The sentiment analysis tool is now running and accessible through a web interface at http://127.0.0.1:7861 if you'd like to analyze more text or see the results in a visual format.
    ```