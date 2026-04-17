# 5 Production Agent Templates

## Template 1: Research Agent

```python
"""
Research Agent Template
Purpose: Research a topic and compile findings into a report
"""

from langchain.agents import Agent
from langchain.agents.react import ReAct
from langchain.tools import DuckDuckGoSearch
from langchain.prompts import prompt_template

# Initialize tools
search = DuckDuckGoSearch()

# Create agent
agent = ReAct.from_tools(
    tools=[search],
    prompt="""
    You are a research agent. Given a topic:
    1. Search for recent information
    2. Identify key points
    3. Compile into structured report
    
    Use search tool to gather information.
    """
)

# Run agent
result = agent.run("Research the latest AI agent frameworks in 2024")
print(result)
```

---

## Template 2: Code Review Agent

```python
"""
Code Review Agent Template
Purpose: Review code and provide feedback
"""

from langchain.agents import Agent
from langchain.tools import ReadFile, WriteFile
from langchain.llms import OpenAI

# Initialize with tools
agent = Agent(
    llm=OpenAI(temperature=0),
    tools=[ReadFile, WriteFile],
    system="""
    You are a senior code reviewer. Review the provided code for:
    - Security vulnerabilities
    - Performance issues
    - Code style violations
    - Best practice deviations
    
    Provide specific, actionable feedback.
    """
)

# Run review
result = agent.run("""
Review this code for security issues:
```python
def get_user(user_id):
    query = f"SELECT * FROM users WHERE id = {user_id}"
    return db.execute(query)
```
""")
print(result)
```

---

## Template 3: Customer Support Agent

```python
"""
Customer Support Agent Template
Purpose: Handle customer inquiries with context
"""

from langchain.memory import ConversationBufferMemory
from langchain.agents import Agent

# Memory for conversation context
memory = ConversationBufferMemory(memory_key="chat_history")

agent = Agent(
    tools=[search_kb, get_order, refund_tool],
    memory=memory,
    system="""
    You are a helpful customer support agent. You have access to:
    - Knowledge base (search_kb)
    - Order lookup (get_order)
    - Refund processing (refund_tool)
    
    Be professional, empathetic, and solve problems efficiently.
    Escalate to human if: chargebacks > $100, legal issues, threats.
    """
)

# Handle conversation
response = agent.run("""
Customer says: "I ordered last week but it hasn't arrived. 
Order #12345, email john@example.com"
""")
print(response)
```

---

## Template 4: Data Analysis Agent

```python
"""
Data Analysis Agent Template
Purpose: Analyze data and generate insights
"""

from langchain.agents import Agent
from langchain.tools import pandas_agent, chart_generator

agent = Agent(
    tools=[pandas_agent, chart_generator],
    system="""
    You are a data analysis expert. Given a dataset:
    1. First understand the structure and contents
    2. Identify key metrics and patterns
    3. Generate insights and recommendations
    4. Create visualizations
    
    Always cite your data sources and explain your reasoning.
    """
)

# Analyze data
result = agent.run("""
Analyze sales_data.csv and find:
- Monthly revenue trends
- Top 5 products
- Customer segmentation insights
- Recommendations for Q4
""")
print(result)
```

---

## Template 5: Content Creation Agent

```python
"""
Content Creation Agent Template
Purpose: Generate content with brand guidelines
"""

from langchain.agents import Agent
from langchain.tools import read_brand_guidelines, publish_content

agent = Agent(
    tools=[read_brand_guidelines, search_trends, publish_content],
    system="""
    You are a content creation agent. Create content that:
    1. Follows brand voice and guidelines
    2. Is optimized for the target platform
    3. Includes relevant keywords for SEO
    4. Has clear CTAs
    
    Platforms supported: Twitter, LinkedIn, Blog, Email
    """
)

# Generate content
result = agent.run("""
Create a LinkedIn post about our new AI agent product launch.
Include: hook, body, statistics, call-to-action.
Target: Engineering managers at startups.
""")
print(result)
```

---

## Quick Start

1. Copy the template you need
2. Add your API keys
3. Customize the system prompt
4. Test with your use case
5. Deploy to production

*All templates included in AI Agent Starter Kit*
