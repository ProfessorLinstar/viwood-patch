.class public final Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;
.super Ljava/lang/Object;
.source "SoundTriggerMiddlewareImpl.java"


# instance fields
.field public final mDeviceHandle:I

.field public final mIoHandle:I

.field public final mSessionHandle:I


# direct methods
.method public constructor <init>(III)V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput p1, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mSessionHandle:I

    .line 67
    iput p2, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mIoHandle:I

    .line 68
    iput p3, p0, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareImpl$AudioSessionProvider$AudioSession;->mDeviceHandle:I

    return-void
.end method
