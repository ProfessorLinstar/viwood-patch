.class public Lcom/android/server/DropBoxManagerService$1$1;
.super Ljava/lang/Thread;
.source "DropBoxManagerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/DropBoxManagerService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/DropBoxManagerService$1;)V
    .locals 0

    .line 165
    iput-object p1, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 168
    :try_start_0
    iget-object v0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    iget-object v0, v0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {v0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$minit(Lcom/android/server/DropBoxManagerService;)V

    .line 169
    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$1$1;->this$1:Lcom/android/server/DropBoxManagerService$1;

    iget-object p0, p0, Lcom/android/server/DropBoxManagerService$1;->this$0:Lcom/android/server/DropBoxManagerService;

    invoke-static {p0}, Lcom/android/server/DropBoxManagerService;->-$$Nest$mtrimToFit(Lcom/android/server/DropBoxManagerService;)J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 171
    const-string v0, "DropBoxManagerService"

    const-string v1, "Can\'t init"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
