from fastapi import FastAPI, HTTPException
from fastapi import UploadFile,File
from fastapi.responses import JSONResponse
from fastapi.encoders import jsonable_encoder
from image_classification import *
import uvicorn
import io

app = FastAPI()
model=torch.load('final_model.pth')
@app.get('/active')
def active():
    return "API is running successfully"

@app.post('/api/imageClassifier')
async def imageClassifer(file :UploadFile= File(...)):
    try:
     image_bytes = await file.read()
     image = Image.open(io.BytesIO(image_bytes)).convert("RGB")
     predicted_label =pred_and_plot_image(model=model,image=image)
     return JSONResponse(content={"predicted_label": predicted_label}, status_code=200)
    
    except Exception as e:
        raise HTTPException(status_code=500, detail=str(e))


if __name__ == '__main__':
    uvicorn.run(app, host='', port=)
