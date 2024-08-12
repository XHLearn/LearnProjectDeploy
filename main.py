import uvicorn
from fastapi import FastAPI
from loguru import logger

app = FastAPI()

logger.info("run app")


@app.get("/")
async def root():
    return {"message": "Hello World"}


@app.get("/add")
async def add():
    data = {"a": 1}
    try:
        data = {"a": a}
    except Exception as e:
        logger.exception(e)
    return data


if __name__ == "__main__":
    uvicorn.run(app, host="0.0.0.0", port=8765)
