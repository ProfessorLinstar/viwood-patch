.class public Lcom/android/server/SmartStorageMaintIdler$2;
.super Ljava/lang/Thread;
.source "SmartStorageMaintIdler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SmartStorageMaintIdler;

.field public final synthetic val$ms:Lcom/android/server/StorageManagerService;

.field public final synthetic val$params:Landroid/app/job/JobParameters;


# direct methods
.method public constructor <init>(Lcom/android/server/SmartStorageMaintIdler;Landroid/app/job/JobParameters;Lcom/android/server/StorageManagerService;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    iput-object p2, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    iput-object p3, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    iget-object v1, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$params:Landroid/app/job/JobParameters;

    invoke-static {v0, v1}, Lcom/android/server/SmartStorageMaintIdler;->-$$Nest$fputmJobParams(Lcom/android/server/SmartStorageMaintIdler;Landroid/app/job/JobParameters;)V

    .line 61
    iget-object v0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->val$ms:Lcom/android/server/StorageManagerService;

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    invoke-static {p0}, Lcom/android/server/SmartStorageMaintIdler;->-$$Nest$fgetmFinishCallback(Lcom/android/server/SmartStorageMaintIdler;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/server/StorageManagerService;->runSmartIdleMaint(Ljava/lang/Runnable;)V

    return-void

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/server/SmartStorageMaintIdler$2;->this$0:Lcom/android/server/SmartStorageMaintIdler;

    invoke-static {p0}, Lcom/android/server/SmartStorageMaintIdler;->-$$Nest$fgetmStarted(Lcom/android/server/SmartStorageMaintIdler;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
