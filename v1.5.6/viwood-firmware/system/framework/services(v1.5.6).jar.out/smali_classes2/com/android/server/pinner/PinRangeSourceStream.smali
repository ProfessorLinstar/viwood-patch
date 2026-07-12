.class public final Lcom/android/server/pinner/PinRangeSourceStream;
.super Lcom/android/server/pinner/PinRangeSource;
.source "PinRangeSourceStream.java"


# instance fields
.field public mDone:Z

.field public final mStream:Ljava/io/DataInputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    .line 27
    invoke-direct {p0}, Lcom/android/server/pinner/PinRangeSource;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    .line 28
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    return-void
.end method


# virtual methods
.method public read(Lcom/android/server/pinner/PinnerService$PinRange;)Z
    .locals 2

    .line 33
    iget-boolean v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->start:I

    .line 36
    iget-object v0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mStream:Ljava/io/DataInputStream;

    invoke-virtual {v0}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    iput v0, p1, Lcom/android/server/pinner/PinnerService$PinRange;->length:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 38
    :catch_0
    iput-boolean v1, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    .line 41
    :cond_0
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/pinner/PinRangeSourceStream;->mDone:Z

    xor-int/2addr p0, v1

    return p0
.end method
