.class public Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;
.super Ljava/lang/Object;
.source "SoundTriggerHalConcurrentCaptureHandler.java"


# instance fields
.field public final callback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

.field public final type:I


# direct methods
.method public constructor <init>(ILcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->type:I

    .line 90
    iput-object p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerHalConcurrentCaptureHandler$LoadedModel;->callback:Lcom/android/server/soundtrigger_middleware/ISoundTriggerHal$ModelCallback;

    return-void
.end method
