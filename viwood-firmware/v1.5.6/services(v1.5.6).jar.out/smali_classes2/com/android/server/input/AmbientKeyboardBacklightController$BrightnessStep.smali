.class public Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;
.super Ljava/lang/Object;
.source "AmbientKeyboardBacklightController.java"


# instance fields
.field public final mBrightnessValue:I

.field public final mDecreaseLuxThreshold:I

.field public final mIncreaseLuxThreshold:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmBrightnessValue(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDecreaseLuxThreshold(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIncreaseLuxThreshold(Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    return p0
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    iput p1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    .line 423
    iput p2, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    .line 424
    iput p3, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    return-void
.end method

.method public synthetic constructor <init>(IIILcom/android/server/input/AmbientKeyboardBacklightController-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;-><init>(III)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrightnessStep{mBrightnessValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mBrightnessValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mIncreaseThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mIncreaseLuxThreshold:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDecreaseThreshold="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/input/AmbientKeyboardBacklightController$BrightnessStep;->mDecreaseLuxThreshold:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
