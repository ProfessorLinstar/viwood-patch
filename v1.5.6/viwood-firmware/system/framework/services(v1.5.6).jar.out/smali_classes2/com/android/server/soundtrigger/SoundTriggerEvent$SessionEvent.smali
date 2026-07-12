.class public Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;
.super Lcom/android/server/soundtrigger/SoundTriggerEvent;
.source "SoundTriggerEvent.java"


# instance fields
.field public final mErrorString:Ljava/lang/String;

.field public final mModelUuid:Ljava/util/UUID;

.field public final mType:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;


# direct methods
.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;)V
    .locals 1

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;-><init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;Ljava/util/UUID;Ljava/lang/String;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Lcom/android/server/soundtrigger/SoundTriggerEvent;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mType:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    .line 115
    iput-object p2, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mModelUuid:Ljava/util/UUID;

    .line 116
    iput-object p3, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mErrorString:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public eventToString()Ljava/lang/String;
    .locals 3

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mType:Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent$Type;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%-25s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mErrorString:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 127
    const-string v1, " ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mErrorString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    :cond_0
    iget-object v1, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mModelUuid:Ljava/util/UUID;

    if-eqz v1, :cond_1

    .line 130
    const-string v1, " for: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/soundtrigger/SoundTriggerEvent$SessionEvent;->mModelUuid:Ljava/util/UUID;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
