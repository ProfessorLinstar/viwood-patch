.class public Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;
.super Ljava/lang/Object;
.source "AppCompatConfigurationPersister.java"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mBookModeReachability:I

.field public final mFileToUpdate:Landroid/util/AtomicFile;

.field public final mHorizontalReachability:I

.field public final mOnComplete:Ljava/util/function/Consumer;

.field public final mTabletopModeReachability:I

.field public final mVerticalReachability:I


# direct methods
.method public constructor <init>(Landroid/util/AtomicFile;IIIILjava/util/function/Consumer;)V
    .locals 0

    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 291
    iput-object p1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    .line 292
    iput p2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    .line 293
    iput p3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    .line 294
    iput p4, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    .line 295
    iput p5, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    .line 296
    iput-object p6, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public process()V
    .locals 4

    .line 301
    const-string v0, "UpdateValuesCommand"

    new-instance v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;

    invoke-direct {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;-><init>()V

    .line 303
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mHorizontalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForHorizontalReachability:I

    .line 304
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mVerticalReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForVerticalReachability:I

    .line 305
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mBookModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForBookModeReachability:I

    .line 307
    iget v2, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mTabletopModeReachability:I

    iput v2, v1, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->letterboxPositionForTabletopModeReachability:I

    .line 309
    invoke-static {v1}, Lcom/android/server/wm/nano/WindowManagerProtos$LetterboxProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    move-result-object v1

    const/4 v2, 0x0

    .line 313
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v3}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v2

    .line 314
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 315
    iget-object v1, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 322
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 323
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 317
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mFileToUpdate:Landroid/util/AtomicFile;

    invoke-virtual {v3, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 318
    const-string v2, "WindowManager"

    const-string v3, "Error writing to AppCompatConfigurationPersister. Using default values!"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 322
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 323
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void

    .line 322
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/AppCompatConfigurationPersister$UpdateValuesCommand;->mOnComplete:Ljava/util/function/Consumer;

    if-eqz p0, :cond_1

    .line 323
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 325
    :cond_1
    throw v1
.end method
