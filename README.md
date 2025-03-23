# beach-hacks-2025

# PrescriptionIQ

**PrescriptionIQ** is a pharmacist assistant chatbot built using Chainlit, LangChain, and Qdrant. It answers pharmacy-related queries, retrieves relevant documents from FDA drug labels, fetches related PubMed papers via NCBI’s Entrez utilities, and suggests follow-up questions.

## Features

- **Conversational AI:** Utilizes GPT-3.5 Turbo via LangChain for chat-based Q&A.
- **Document Retrieval:** Employs Qdrant for vector storage and retrieval of FDA drug labels.
- **PubMed Integration:** Searches PubMed for related papers using Biopython’s Entrez and Medline modules.
- **Interactive UI:** Developed with Chainlit; includes clickable source buttons, related questions, and formatted Markdown output.
- **Customizable Interface:** Features clean Markdown formatting and toggle (accordion-style) for source details.

## Installation

1. **Clone this repository** or download the project files.
2. **Set up your Python environment** (preferably a virtual environment).
3. Install the required packages:

    ```bash
    pip install -r requirements.txt
    ```

    Ensure your `requirements.txt` includes: `chainlit`, `langchain`, `biopython`, `qdrant-client`, `python-dotenv`, among others as needed.

## Environment Variables

Create a `.env` file in the project root with the following keys (replace with your actual values):

```dotenv
# OpenAI API Key for LLM access
OPENAI_API_KEY=your_openai_api_key_here

# Qdrant API and Cluster URL (if using Qdrant Cloud)
QDRANT_API_KEY=your_qdrant_api_key_here
QDRANT_CLUSTER_URL=https://your-qdrant-cluster-url:port

# NCBI Email for PubMed queries (required by NCBI E-utilities)
ENTREZ_EMAIL=your_email@example.com
