.class public final Lcom/android/server/audio/AudioDeviceBroker$RecordingConfigurationBean;
.super Ljava/lang/Object;
.source "AudioDeviceBroker.java"


# instance fields
.field public final mDeviceInfo:Landroid/media/AudioDeviceInfo;

.field public final mEvent:I

.field public final mSampleRate:I

.field public final mSource:I

.field public final mUid:I


# direct methods
.method public constructor <init>(IIIILandroid/media/AudioDeviceInfo;)V
    .locals 0

    .line 3617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3618
    iput p1, p0, Lcom/android/server/audio/AudioDeviceBroker$RecordingConfigurationBean;->mEvent:I

    .line 3619
    iput p2, p0, Lcom/android/server/audio/AudioDeviceBroker$RecordingConfigurationBean;->mSampleRate:I

    .line 3620
    iput p3, p0, Lcom/android/server/audio/AudioDeviceBroker$RecordingConfigurationBean;->mUid:I

    .line 3621
    iput p4, p0, Lcom/android/server/audio/AudioDeviceBroker$RecordingConfigurationBean;->mSource:I

    .line 3622
    iput-object p5, p0, Lcom/android/server/audio/AudioDeviceBroker$RecordingConfigurationBean;->mDeviceInfo:Landroid/media/AudioDeviceInfo;

    return-void
.end method
