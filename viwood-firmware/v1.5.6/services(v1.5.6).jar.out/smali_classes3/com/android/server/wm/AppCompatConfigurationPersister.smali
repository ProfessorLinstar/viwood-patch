.class public Lcom/android/server/wm/AppCompatConfigurationPersister;
.super Ljava/lang/Object;
.source "AppCompatConfigurationPersister.java"


# instance fields
.field public final mCompletionCallback:Ljava/util/function/Consumer;

.field public final mConfigurationFile:Landroid/util/AtomicFile;

.field public final mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

.field public final mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

.field public volatile mLetterboxPositionForBookModeReachability:I

.field public volatile mLetterboxPositionForHorizontalReachability:I

.field public volatile mLetterboxPositionForTabletopModeReachability:I

.field public volatile mLetterboxPositionForVerticalReachability:I

.field public final mPersisterQueue:Lcom/android/server/wm/PersisterQueue;


# direct methods
.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;)V
    .locals 9

    .line 101
    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    new-instance v6, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v6}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    const/4 v7, 0x0

    const-string v8, "letterbox_config"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 99
    invoke-direct/range {v0 .. v8}, Lcom/android/server/wm/AppCompatConfigurationPersister;-><init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/util/function/Supplier;Ljava/io/File;Lcom/android/server/wm/PersisterQueue;Ljava/util/function/Consumer;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/function/Supplier<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/io/File;",
            "Lcom/android/server/wm/PersisterQueue;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 115
    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    .line 116
    iput-object p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 117
    iput-object p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 118
    iput-object p7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    .line 119
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p5, p8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 120
    new-instance p2, Landroid/util/AtomicFile;

    invoke-direct {p2, p1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    .line 121
    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 122
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->readCurrentConfiguration()V

    return-void
.end method

.method public static readInputStream(Ljava/io/InputStream;)[B
    .locals 4

    .line 259
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    .line 261
    :try_start_0
    new-array v1, v1, [B

    .line 262
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    :goto_0
    if-lez v2, :cond_0

    const/4 v3, 0x0

    .line 264
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 265
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 267
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 269
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    return-object p0

    :goto_1
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 270
    throw p0
.end method


# virtual methods
.method public getLetterboxPositionForHorizontalReachability(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 139
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    return p0

    .line 141
    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    return p0
.end method

.method public getLetterboxPositionForVerticalReachability(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 152
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    return p0

    .line 154
    :cond_0
    iget p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    return p0
.end method

.method public final readCurrentConfiguration()V
    .locals 5

    .line 214
    const-string v0, "Error reading from AppCompatConfigurationPersister "

    const-string v1, "WindowManager"

    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    return-void

    :cond_0
    const/4 v2, 0x0

    .line 220
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 221
    invoke-static {v2}, Lcom/android/server/wm/AppCompatConfigurationPersister;->readInputStream(Ljava/io/InputStream;)[B

    move-result-object v3

    .line 223
    invoke-static {v3}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->parseFrom([B)Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    move-result-object v3

    .line 224
    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    iput v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 226
    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    iput v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 228
    iget v4, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    iput v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 230
    iget v3, v3, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    iput v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 240
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v2

    .line 242
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 243
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catch_1
    move-exception v3

    .line 233
    :try_start_2
    const-string v4, "Error reading from AppCompatConfigurationPersister. Using default values!"

    invoke-static {v1, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 236
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    .line 240
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    :goto_0
    return-void

    :goto_1
    if-eqz v2, :cond_2

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception v2

    .line 242
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->useDefaultValue()V

    .line 243
    invoke-static {v1, v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 246
    :cond_2
    :goto_2
    throw v3
.end method

.method public setLetterboxPositionForHorizontalReachability(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 164
    iget p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    if-eq p1, p2, :cond_1

    .line 166
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 168
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    return-void

    .line 171
    :cond_0
    iget p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    if-eq p1, p2, :cond_1

    .line 173
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 175
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    :cond_1
    return-void
.end method

.method public setLetterboxPositionForVerticalReachability(ZI)V
    .locals 0

    if-eqz p1, :cond_0

    .line 186
    iget p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    if-eq p1, p2, :cond_1

    .line 188
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    .line 190
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    return-void

    .line 193
    :cond_0
    iget p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    if-eq p1, p2, :cond_1

    .line 195
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 197
    invoke-virtual {p0}, Lcom/android/server/wm/AppCompatConfigurationPersister;->updateConfiguration()V

    :cond_1
    return-void
.end method

.method public start()V
    .locals 0

    .line 129
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {p0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    return-void
.end method

.method public final updateConfiguration()V
    .locals 8

    .line 250
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    new-instance v1, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;

    iget-object v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mConfigurationFile:Landroid/util/AtomicFile;

    iget v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    iget v4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    iget v5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    iget v6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    iget-object v7, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mCompletionCallback:Ljava/util/function/Consumer;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;-><init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V

    const/4 p0, 0x1

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/PersisterQueue;->addItem(Lcom/android/server/wm/PersisterQueue$WriteQueueItem;Z)V

    return-void
.end method

.method public useDefaultValue()V
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultHorizontalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForHorizontalReachability:I

    .line 205
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultVerticalReachabilitySupplier:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForVerticalReachability:I

    .line 206
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultBookModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 207
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForBookModeReachability:I

    .line 208
    iget-object v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mDefaultTabletopModeReachabilitySupplier:Ljava/util/function/Supplier;

    .line 209
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister;->mLetterboxPositionForTabletopModeReachability:I

    return-void
.end method
