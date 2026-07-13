.class public Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;
.super Ljava/lang/Object;
.source "RemoteSpeechRecognitionService.java"


# instance fields
.field public mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

.field public mRecordingInProgress:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 471
    invoke-direct {p0, v0, v1}, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;-><init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;Z)V
    .locals 0

    .line 461
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 462
    iput-object p1, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    .line 463
    iput-boolean p2, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mDelegatingListener:Lcom/android/server/speech/RemoteSpeechRecognitionService$DelegatingListener;

    const/4 v0, 0x0

    .line 476
    iput-boolean v0, p0, Lcom/android/server/speech/RemoteSpeechRecognitionService$ClientState;->mRecordingInProgress:Z

    return-void
.end method
