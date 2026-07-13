.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;
.super Ljava/lang/Object;
.source "SoundTriggerDuplicateModelHandler.java"


# instance fields
.field public mModelId:I

.field public mUuid:Ljava/lang/String;

.field public mWasContended:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    .line 45
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mModelId:I

    .line 46
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mUuid:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getModelId()I
    .locals 0

    .line 50
    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mModelId:I

    return p0
.end method

.method public getUuid()Ljava/lang/String;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getWasContended()Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    return p0
.end method

.method public setWasContended()V
    .locals 1

    const/4 v0, 0x1

    .line 62
    iput-boolean v0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerDuplicateModelHandler$ModelData;->mWasContended:Z

    return-void
.end method
