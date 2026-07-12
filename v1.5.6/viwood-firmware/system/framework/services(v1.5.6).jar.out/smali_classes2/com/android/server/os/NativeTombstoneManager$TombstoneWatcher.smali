.class public Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;
.super Landroid/os/FileObserver;
.source "NativeTombstoneManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/os/NativeTombstoneManager;


# direct methods
.method public static synthetic $r8$lambda$A74hOANgR204PBre_Brq7oIduOU(Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->lambda$onEvent$0(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/os/NativeTombstoneManager;)V
    .locals 1

    .line 596
    iput-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    .line 600
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTOMBSTONE_DIR()Ljava/io/File;

    move-result-object p1

    const/16 v0, 0x180

    invoke-direct {p0, p1, v0}, Landroid/os/FileObserver;-><init>(Ljava/io/File;I)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onEvent$0(Ljava/lang/String;)V
    .locals 2

    .line 611
    const-string v0, ".tmp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 614
    :cond_0
    iget-object p0, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTOMBSTONE_DIR()Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$mhandleTombstone(Lcom/android/server/os/NativeTombstoneManager;Ljava/io/File;)V

    return-void
.end method

.method public onEvent(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 606
    invoke-static {}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "path is null at TombstoneWatcher.onEvent()"

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 609
    :cond_0
    iget-object p1, p0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;->this$0:Lcom/android/server/os/NativeTombstoneManager;

    invoke-static {p1}, Lcom/android/server/os/NativeTombstoneManager;->-$$Nest$fgetmHandler(Lcom/android/server/os/NativeTombstoneManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2}, Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/os/NativeTombstoneManager$TombstoneWatcher;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
