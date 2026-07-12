.class public Lcom/android/server/backup/UserBackupManagerService$3;
.super Ljava/lang/Object;
.source "UserBackupManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/backup/UserBackupManagerService;

.field public final synthetic val$packageName:Ljava/lang/String;

.field public final synthetic val$targets:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V
    .locals 0

    .line 2341
    iput-object p1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    iput-object p2, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$targets:Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 2343
    iget-object v0, p0, Lcom/android/server/backup/UserBackupManagerService$3;->this$0:Lcom/android/server/backup/UserBackupManagerService;

    iget-object v1, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$packageName:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/backup/UserBackupManagerService$3;->val$targets:Ljava/util/HashSet;

    invoke-static {v0, v1, p0}, Lcom/android/server/backup/UserBackupManagerService;->-$$Nest$mdataChangedImpl(Lcom/android/server/backup/UserBackupManagerService;Ljava/lang/String;Ljava/util/HashSet;)V

    return-void
.end method
