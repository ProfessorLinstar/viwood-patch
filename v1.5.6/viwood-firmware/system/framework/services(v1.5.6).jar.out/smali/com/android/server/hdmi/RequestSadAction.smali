.class public final Lcom/android/server/hdmi/RequestSadAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "RequestSadAction.java"


# static fields
.field public static final RETRY_COUNTER_MAX:I = 0x3


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

.field public final mCecCodecsToQuery:Ljava/util/List;

.field public mQueriedSadCount:I

.field public final mSupportedSads:Ljava/util/List;

.field public final mTargetAddress:I

.field public mTimeoutRetry:I


# direct methods
.method public static synthetic $r8$lambda$BBMOFjOREzo49KdrD-UBpHXG_sg(Ljava/lang/Integer;)I
    .locals 0

    .line 152
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;ILcom/android/server/hdmi/RequestSadAction$RequestSadCallback;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    .line 45
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    const/4 v0, 0x0

    .line 48
    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 49
    iput v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 59
    iput p2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 60
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    .line 61
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->localDevice()Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->getHdmiCecConfig()Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p0

    .line 62
    const-string/jumbo p2, "query_sad_lpcm"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    .line 65
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    :cond_0
    const-string/jumbo p2, "query_sad_dd"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_1

    const/4 p2, 0x2

    .line 70
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_1
    const-string/jumbo p2, "query_sad_mpeg1"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_2

    const/4 p2, 0x3

    .line 75
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_2
    const-string/jumbo p2, "query_sad_mp3"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_3

    const/4 p2, 0x4

    .line 80
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    :cond_3
    const-string/jumbo p2, "query_sad_mpeg2"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_4

    const/4 p2, 0x5

    .line 85
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_4
    const-string/jumbo p2, "query_sad_aac"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_5

    const/4 p2, 0x6

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    :cond_5
    const-string/jumbo p2, "query_sad_dts"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_6

    const/4 p2, 0x7

    .line 95
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    :cond_6
    const-string/jumbo p2, "query_sad_atrac"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_7

    const/16 p2, 0x8

    .line 100
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_7
    const-string/jumbo p2, "query_sad_onebitaudio"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_8

    const/16 p2, 0x9

    .line 105
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    :cond_8
    const-string/jumbo p2, "query_sad_ddp"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_9

    const/16 p2, 0xa

    .line 110
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    :cond_9
    const-string/jumbo p2, "query_sad_dtshd"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_a

    const/16 p2, 0xb

    .line 115
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    :cond_a
    const-string/jumbo p2, "query_sad_truehd"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_b

    const/16 p2, 0xc

    .line 120
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    :cond_b
    const-string/jumbo p2, "query_sad_dst"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_c

    const/16 p2, 0xd

    .line 125
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    :cond_c
    const-string/jumbo p2, "query_sad_wmapro"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p2

    if-ne p2, p3, :cond_d

    const/16 p2, 0xe

    .line 130
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    :cond_d
    const-string/jumbo p2, "query_sad_max"

    invoke-virtual {p0, p2}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p0

    if-ne p0, p3, :cond_e

    const/16 p0, 0xf

    .line 135
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_e
    return-void
.end method

.method private wrapUpAndFinish()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCallback:Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/android/server/hdmi/RequestSadAction$RequestSadCallback;->onRequestSadDone(Ljava/util/List;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method


# virtual methods
.method public handleTimerEvent(I)V
    .locals 1

    .line 222
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 226
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 227
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    return-void

    .line 232
    :cond_1
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public final isValidCodec(B)Z
    .locals 1

    .line 0
    and-int/lit16 p0, p1, 0x80

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    and-int/lit8 p0, p1, 0x78

    shr-int/lit8 p0, p0, 0x3

    if-lez p0, :cond_1

    const/16 p1, 0xf

    if-gt p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 9

    const/4 v0, 0x2

    const/4 v1, 0x3

    .line 161
    iget v2, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_7

    iget v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    .line 162
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v5

    if-eq v2, v5, :cond_0

    goto/16 :goto_3

    .line 165
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    const/16 v5, 0xa3

    if-ne v2, v5, :cond_5

    .line 166
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    array-length v2, v2

    if-eqz v2, :cond_4

    .line 167
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    array-length v2, v2

    rem-int/2addr v2, v1

    if-eqz v2, :cond_1

    goto :goto_2

    :cond_1
    move v2, v3

    .line 171
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    array-length v5, v5

    sub-int/2addr v5, v0

    if-ge v2, v5, :cond_3

    .line 172
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    aget-byte v5, v5, v2

    invoke-virtual {p0, v5}, Lcom/android/server/hdmi/RequestSadAction;->isValidCodec(B)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 173
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v5

    aget-byte v5, v5, v2

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    aget-byte v6, v6, v7

    .line 174
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v7

    add-int/lit8 v8, v2, 0x2

    aget-byte v7, v7, v8

    new-array v8, v1, [B

    aput-byte v5, v8, v3

    aput-byte v6, v8, v4

    aput-byte v7, v8, v0

    .line 175
    invoke-virtual {p0, v8}, Lcom/android/server/hdmi/RequestSadAction;->updateResult([B)V

    goto :goto_1

    .line 178
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Dropped invalid codec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v6

    aget-byte v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "RequestSadAction"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/2addr v2, v1

    goto :goto_0

    .line 181
    :cond_3
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 182
    iput v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 183
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    :cond_4
    :goto_2
    return v4

    .line 186
    :cond_5
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    if-nez v0, :cond_7

    .line 187
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_7

    .line 189
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v0

    aget-byte v0, v0, v4

    and-int/lit16 v0, v0, 0xff

    if-nez v0, :cond_6

    .line 191
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    return v4

    .line 194
    :cond_6
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object p1

    aget-byte p1, p1, v4

    and-int/lit16 p1, p1, 0xff

    if-ne p1, v1, :cond_7

    .line 196
    iget p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 p1, p1, 0x4

    iput p1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 197
    iput v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mTimeoutRetry:I

    .line 198
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    return v4

    :cond_7
    :goto_3
    return v3
.end method

.method public final querySad()V
    .locals 4

    .line 146
    iget v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    iget-object v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 147
    invoke-direct {p0}, Lcom/android/server/hdmi/RequestSadAction;->wrapUpAndFinish()V

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/RequestSadAction;->mCecCodecsToQuery:Ljava/util/List;

    iget v1, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    .line 151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcom/android/server/hdmi/RequestSadAction;->mQueriedSadCount:I

    add-int/lit8 v3, v3, 0x4

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    .line 152
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/server/hdmi/RequestSadAction$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v0

    .line 153
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->getSourceAddress()I

    move-result v1

    iget v2, p0, Lcom/android/server/hdmi/RequestSadAction;->mTargetAddress:I

    invoke-static {v1, v2, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    const/4 v0, 0x1

    .line 155
    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 v1, 0x7d0

    .line 156
    invoke-virtual {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method

.method public start()Z
    .locals 0

    .line 141
    invoke-virtual {p0}, Lcom/android/server/hdmi/RequestSadAction;->querySad()V

    const/4 p0, 0x1

    return p0
.end method

.method public final updateResult([B)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/server/hdmi/RequestSadAction;->mSupportedSads:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
