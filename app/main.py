from fastapi import FastAPI
from pydantic import BaseModel

app = FastAPI(title="Cloud-Native AI Inference API", version="0.1.0")


class InferenceRequest(BaseModel):
    text: str


@app.get("/healthz")
def healthz():
    return {"status": "ok"}


@app.post("/infer")
def infer(req: InferenceRequest):
    # Placeholder inference logic
    return {
        "input": req.text,
        "prediction": "placeholder",
        "confidence": 0.5,
    }
