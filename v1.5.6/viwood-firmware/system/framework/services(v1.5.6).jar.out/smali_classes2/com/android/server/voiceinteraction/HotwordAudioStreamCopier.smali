.class public final Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;
.super Ljava/lang/Object;
.source "HotwordAudioStreamCopier.java"


# static fields
.field static final DEFAULT_COPY_BUFFER_LENGTH_BYTES:I = 0x8000

.field static final MAX_COPY_BUFFER_LENGTH_BYTES:I = 0x10000


# instance fields
.field public final mAppOpsManager:Landroid/app/AppOpsManager;

.field public final mDetectorType:I

.field public final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field public final mVoiceInteractorAttributionTag:Ljava/lang/String;

.field public final mVoiceInteractorPackageName:Ljava/lang/String;

.field public final mVoiceInteractorUid:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmAppOpsManager(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Landroid/app/AppOpsManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDetectorType(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractorAttributionTag(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractorPackageName(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVoiceInteractorUid(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    return p0
.end method

.method public constructor <init>(Landroid/app/AppOpsManager;IILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 82
    iput-object p1, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 83
    iput p2, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    .line 84
    iput p3, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    .line 85
    iput-object p4, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorPackageName:Ljava/lang/String;

    .line 86
    iput-object p5, p0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorAttributionTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;)Landroid/service/voice/HotwordDetectedResult;
    .locals 1

    const/4 v0, 0x1

    .line 96
    invoke-virtual {p0, p1, v0}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;

    move-result-object p0

    return-object p0
.end method

.method public startCopyingAudioStreams(Landroid/service/voice/HotwordDetectedResult;Z)Landroid/service/voice/HotwordDetectedResult;
    .locals 17

    move-object/from16 v1, p0

    .line 116
    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->getAudioStreams()Ljava/util/List;

    move-result-object v0

    .line 117
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    iget v3, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v5, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v4, 0x7

    const/4 v6, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    return-object p1

    .line 125
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v14

    .line 126
    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v7, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 127
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    move v4, v2

    move v5, v4

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/service/voice/HotwordAudioStream;

    .line 131
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createReliablePipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v8

    .line 132
    aget-object v9, v8, v2

    const/4 v10, 0x1

    .line 133
    aget-object v8, v8, v10

    .line 135
    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->buildUpon()Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v11

    invoke-virtual {v11, v9}, Landroid/service/voice/HotwordAudioStream$Builder;->setAudioStreamParcelFileDescriptor(Landroid/os/ParcelFileDescriptor;)Landroid/service/voice/HotwordAudioStream$Builder;

    move-result-object v9

    .line 136
    invoke-virtual {v9}, Landroid/service/voice/HotwordAudioStream$Builder;->build()Landroid/service/voice/HotwordAudioStream;

    move-result-object v9

    .line 137
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->getMetadata()Landroid/os/PersistableBundle;

    move-result-object v9

    .line 141
    invoke-static {v9}, Landroid/service/voice/HotwordDetectedResult;->getParcelableSize(Landroid/os/Parcelable;)I

    move-result v11

    add-int/2addr v4, v11

    .line 142
    const-string v11, "android.service.voice.key.AUDIO_STREAM_COPY_BUFFER_LENGTH_BYTES"

    invoke-virtual {v9, v11}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v12

    const v15, 0x8000

    if-eqz v12, :cond_3

    const/4 v12, -0x1

    .line 143
    invoke-virtual {v9, v11, v12}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    if-lt v9, v10, :cond_1

    const/high16 v10, 0x10000

    if-le v9, v10, :cond_2

    :cond_1
    move v10, v9

    goto :goto_1

    :cond_2
    move v15, v9

    goto :goto_2

    .line 145
    :goto_1
    iget v9, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mDetectorType:I

    iget v11, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mVoiceInteractorUid:I

    const/4 v12, 0x0

    const/4 v13, 0x0

    move/from16 v16, v10

    const/16 v10, 0x9

    move/from16 v2, v16

    invoke-static/range {v9 .. v14}, Lcom/android/server/voiceinteraction/HotwordMetricsLogger;->writeAudioEgressEvent(IIIIII)V

    .line 149
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Attempted to set an invalid copy buffer length ("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") for: "

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v9, "HotwordAudioStreamCopier"

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_3
    :goto_2
    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->getInitialAudio()[B

    move-result-object v2

    array-length v2, v2

    add-int/2addr v5, v2

    .line 163
    invoke-virtual {v6}, Landroid/service/voice/HotwordAudioStream;->getAudioStreamParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    .line 164
    new-instance v6, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;

    invoke-direct {v6, v2, v8, v15}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$CopyTaskInfo;-><init>(Landroid/os/ParcelFileDescriptor;Landroid/os/ParcelFileDescriptor;I)V

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x0

    goto/16 :goto_0

    .line 168
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HotwordDetectedResult@"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 169
    iget-object v8, v1, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;

    move/from16 v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier$HotwordDetectedResultCopyTask;-><init>(Lcom/android/server/voiceinteraction/HotwordAudioStreamCopier;Ljava/lang/String;Ljava/util/List;IIZ)V

    invoke-interface {v8, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual/range {p1 .. p1}, Landroid/service/voice/HotwordDetectedResult;->buildUpon()Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/service/voice/HotwordDetectedResult$Builder;->setAudioStreams(Ljava/util/List;)Landroid/service/voice/HotwordDetectedResult$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/voice/HotwordDetectedResult$Builder;->build()Landroid/service/voice/HotwordDetectedResult;

    move-result-object v0

    return-object v0
.end method
