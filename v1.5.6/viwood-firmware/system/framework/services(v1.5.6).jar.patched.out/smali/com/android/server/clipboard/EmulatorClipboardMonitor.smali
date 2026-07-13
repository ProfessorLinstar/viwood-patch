.class public Lcom/android/server/clipboard/EmulatorClipboardMonitor;
.super Ljava/lang/Object;
.source "EmulatorClipboardMonitor.java"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final LOG_CLIBOARD_ACCESS:Z


# instance fields
.field public final mHostMonitorThread:Ljava/lang/Thread;

.field public mPipe:Ljava/io/FileDescriptor;


# direct methods
.method public static synthetic $r8$lambda$6XdF9Wq0zBE4L9ePnTl3z_2l0ic(Ljava/lang/String;Ljava/io/FileDescriptor;)V
    .locals 3

    .line 207
    sget-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    const-string v1, "EmulatorClipboardMonitor"

    if-eqz v0, :cond_0

    .line 208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting the host clipboard to \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->sendMessage(Ljava/io/FileDescriptor;[B)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    return-void

    :catch_0
    move-exception p0

    .line 214
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to set host clipboard "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :catch_1
    return-void
.end method

.method public static synthetic $r8$lambda$I665hZBuK4A9PXws4VUFbdMwhbk(Lcom/android/server/clipboard/EmulatorClipboardMonitor;Ljava/util/function/Consumer;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->lambda$new$0(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 47
    const-string/jumbo v0, "ro.boot.qemu.log_clipboard_access"

    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;)V
    .locals 2

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 51
    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;

    .line 137
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/clipboard/EmulatorClipboardMonitor;Ljava/util/function/Consumer;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mHostMonitorThread:Ljava/lang/Thread;

    .line 177
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static createOpenHandshake()[B
    .locals 3

    .line 59
    const-string/jumbo v0, "pipe:clipboard"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/16 v1, 0xf

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    const/16 v1, 0xe

    const/4 v2, 0x0

    .line 60
    aput-byte v2, v0, v1

    return-object v0
.end method

.method public static openPipe()Ljava/io/FileDescriptor;
    .locals 2

    .line 92
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_0

    const-wide/16 v0, 0x64

    .line 98
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 99
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipeImpl()Ljava/io/FileDescriptor;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static openPipeImpl()Ljava/io/FileDescriptor;
    .locals 5

    .line 74
    :try_start_0
    sget v0, Landroid/system/OsConstants;->AF_VSOCK:I

    sget v1, Landroid/system/OsConstants;->SOCK_STREAM:I

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/system/Os;->socket(III)Ljava/io/FileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1

    .line 77
    :try_start_1
    new-instance v1, Landroid/system/VmSocketAddress;

    sget v3, Landroid/system/OsConstants;->VMADDR_CID_HOST:I

    const/16 v4, 0x1388

    invoke-direct {v1, v4, v3}, Landroid/system/VmSocketAddress;-><init>(II)V

    invoke-static {v0, v1}, Landroid/system/Os;->connect(Ljava/io/FileDescriptor;Ljava/net/SocketAddress;)V

    .line 79
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->createOpenHandshake()[B

    move-result-object v1

    .line 80
    array-length v3, v1

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v0

    .line 83
    :catch_0
    :try_start_2
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_2
    .catch Landroid/system/ErrnoException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static readFully(Ljava/io/FileDescriptor;[BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_1

    .line 225
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 230
    :cond_0
    new-instance p0, Ljava/io/EOFException;

    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    throw p0

    :cond_1
    return-void
.end method

.method public static sendMessage(Ljava/io/FileDescriptor;[B)V
    .locals 4

    const/4 v0, 0x4

    .line 127
    new-array v1, v0, [B

    .line 128
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 129
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 130
    array-length v3, p1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    .line 132
    invoke-static {p0, v1, v2, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V

    .line 133
    array-length v0, p1

    invoke-static {p0, p1, v2, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->writeFully(Ljava/io/FileDescriptor;[BII)V

    return-void
.end method

.method public static setHostClipboard(Ljava/io/FileDescriptor;Ljava/lang/String;)V
    .locals 2

    .line 206
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/io/FileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 218
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public static writeFully(Ljava/io/FileDescriptor;[BII)V
    .locals 1

    :goto_0
    if-lez p3, :cond_1

    .line 239
    invoke-static {p0, p1, p2, p3}, Landroid/system/Os;->write(Ljava/io/FileDescriptor;[BII)I

    move-result v0

    if-lez v0, :cond_0

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    goto :goto_0

    .line 244
    :cond_0
    new-instance p0, Landroid/system/ErrnoException;

    const-string/jumbo p1, "write"

    sget p2, Landroid/system/OsConstants;->EIO:I

    invoke-direct {p0, p1, p2}, Landroid/system/ErrnoException;-><init>(Ljava/lang/String;I)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public accept(Landroid/content/ClipData;)V
    .locals 1

    .line 182
    invoke-virtual {p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->getPipeFD()Ljava/io/FileDescriptor;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->getClipString(Landroid/content/ClipData;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setHostClipboard(Ljava/io/FileDescriptor;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 41
    check-cast p1, Landroid/content/ClipData;

    invoke-virtual {p0, p1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->accept(Landroid/content/ClipData;)V

    return-void
.end method

.method public final getClipString(Landroid/content/ClipData;)Ljava/lang/String;
    .locals 1

    .line 189
    const-string p0, ""

    if-nez p1, :cond_0

    return-object p0

    .line 193
    :cond_0
    invoke-virtual {p1}, Landroid/content/ClipData;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    return-object p0

    :cond_1
    const/4 v0, 0x0

    .line 197
    invoke-virtual {p1, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ClipData$Item;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_2

    return-object p0

    .line 202
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getPipeFD()Ljava/io/FileDescriptor;
    .locals 1

    monitor-enter p0

    .line 65
    :try_start_0
    iget-object v0, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final synthetic lambda$new$0(Ljava/util/function/Consumer;)V
    .locals 8

    const/4 v0, 0x0

    :catch_0
    :goto_0
    move-object v1, v0

    .line 140
    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v2

    if-nez v2, :cond_2

    .line 142
    const-string v2, "EmulatorClipboardMonitor"

    if-nez v1, :cond_0

    .line 143
    :try_start_0
    invoke-static {}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->openPipe()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 144
    invoke-virtual {p0, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setPipeFD(Ljava/io/FileDescriptor;)V

    goto :goto_2

    :catch_1
    move-exception v3

    goto :goto_3

    .line 147
    :cond_0
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->receiveMessage(Ljava/io/FileDescriptor;)[B

    move-result-object v3

    .line 149
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v3}, Ljava/lang/String;-><init>([B)V

    .line 150
    new-instance v3, Landroid/content/ClipData;

    const-string v5, "host clipboard"

    const-string/jumbo v6, "text/plain"

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    new-instance v7, Landroid/content/ClipData$Item;

    invoke-direct {v7, v4}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v3, v5, v6, v7}, Landroid/content/ClipData;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;Landroid/content/ClipData$Item;)V

    .line 153
    new-instance v5, Landroid/os/PersistableBundle;

    invoke-direct {v5}, Landroid/os/PersistableBundle;-><init>()V

    .line 154
    const-string v6, "com.android.systemui.SUPPRESS_CLIPBOARD_OVERLAY"

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 155
    invoke-virtual {v3}, Landroid/content/ClipData;->getDescription()Landroid/content/ClipDescription;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    .line 157
    sget-boolean v5, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->LOG_CLIBOARD_ACCESS:Z

    if-eqz v5, :cond_1

    .line 158
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting the guest clipboard to \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :cond_1
    invoke-interface {p1, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 163
    :goto_3
    const-string v4, "Failure to read from host clipboard"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    invoke-virtual {p0, v0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->setPipeFD(Ljava/io/FileDescriptor;)V

    .line 167
    :try_start_1
    invoke-static {v1}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final receiveMessage(Ljava/io/FileDescriptor;)[B
    .locals 2

    const/4 p0, 0x4

    .line 107
    new-array v0, p0, [B

    const/4 v1, 0x0

    .line 108
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->readFully(Ljava/io/FileDescriptor;[BII)V

    .line 110
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    .line 111
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 112
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getInt()I

    move-result p0

    if-ltz p0, :cond_0

    const/high16 v0, 0x8000000

    if-gt p0, v0, :cond_0

    .line 118
    new-array v0, p0, [B

    .line 119
    invoke-static {p1, v0, v1, p0}, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->readFully(Ljava/io/FileDescriptor;[BII)V

    return-object v0

    .line 115
    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Clipboard message length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " out of bounds."

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final declared-synchronized setPipeFD(Ljava/io/FileDescriptor;)V
    .locals 0

    monitor-enter p0

    .line 69
    :try_start_0
    iput-object p1, p0, Lcom/android/server/clipboard/EmulatorClipboardMonitor;->mPipe:Ljava/io/FileDescriptor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
