.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareLogging.java"


# instance fields
.field public mId:I

.field public mImplementor:Ljava/lang/String;

.field public mVersion:I


# direct methods
.method public constructor <init>(ILjava/lang/String;I)V
    .locals 0

    .line 686
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 687
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mId:I

    .line 688
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mImplementor:Ljava/lang/String;

    .line 689
    iput p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mVersion:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 694
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{Id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", Implementor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mImplementor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", Version: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareLogging$ModulePropertySummary;->mVersion:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
