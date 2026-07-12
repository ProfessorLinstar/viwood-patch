.class public final Lcom/android/server/audio/SoundEffectsHelper$Resource;
.super Ljava/lang/Object;
.source "SoundEffectsHelper.java"


# instance fields
.field public final mFileName:Ljava/lang/String;

.field public mLoaded:Z

.field public mSampleId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mFileName:Ljava/lang/String;

    const/4 p1, 0x0

    .line 100
    iput p1, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    return-void
.end method


# virtual methods
.method public unload()V
    .locals 1

    const/4 v0, 0x0

    .line 104
    iput v0, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mSampleId:I

    .line 105
    iput-boolean v0, p0, Lcom/android/server/audio/SoundEffectsHelper$Resource;->mLoaded:Z

    return-void
.end method
