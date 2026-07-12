.class public Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;
.super Ljava/lang/Object;
.source "AudioService.java"


# instance fields
.field public final mMode:I

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 0

    .line 5085
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5086
    iput p1, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    .line 5087
    iput p2, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    .line 5088
    iput-object p3, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMode()I
    .locals 0

    .line 5095
    iget p0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mMode:I

    return p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    .line 5101
    iget-object p0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    .line 5098
    iget p0, p0, Lcom/android/server/audio/AudioService$UpdateAudioModeInfo;->mPid:I

    return p0
.end method
