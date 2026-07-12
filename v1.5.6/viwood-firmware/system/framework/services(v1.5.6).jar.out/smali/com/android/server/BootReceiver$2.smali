.class public Lcom/android/server/BootReceiver$2;
.super Ljava/lang/Object;
.source "BootReceiver.java"

# interfaces
.implements Landroid/os/MessageQueue$OnFileDescriptorEventListener;


# instance fields
.field public final mBufferSize:I

.field public mTraceBuffer:[B


# direct methods
.method public constructor <init>(Lcom/android/server/BootReceiver;)V
    .locals 0

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0x400

    .line 202
    iput p1, p0, Lcom/android/server/BootReceiver$2;->mBufferSize:I

    .line 203
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    return-void
.end method


# virtual methods
.method public onFileDescriptorEvents(Ljava/io/FileDescriptor;I)I
    .locals 2

    const/4 p2, 0x0

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    const/16 v1, 0x400

    invoke-static {p1, v0, p2, v1}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_1

    .line 220
    new-instance v0, Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/BootReceiver$2;->mTraceBuffer:[B

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    .line 221
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    .line 233
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v1

    .line 224
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result p0

    const/16 v0, 0x8

    if-ge p0, v0, :cond_1

    .line 225
    const-string p0, "dmesgd.start"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    invoke-static {}, Lcom/android/server/BootReceiver;->-$$Nest$sfgetsSentReports()I

    move-result p0

    add-int/2addr p0, v1

    invoke-static {p0}, Lcom/android/server/BootReceiver;->-$$Nest$sfputsSentReports(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 233
    :cond_1
    :goto_0
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return v1

    .line 230
    :goto_1
    :try_start_2
    const-string v0, "BootReceiver"

    const-string v1, "Error watching for trace events"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 233
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    return p2

    :goto_2
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/io/FileDescriptor;)V

    .line 234
    throw p0
.end method
