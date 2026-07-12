.class public Lcom/android/server/wm/ActivityTaskManagerService$1;
.super Ljava/lang/Object;
.source "ActivityTaskManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 862
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 865
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService$1;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/ActivityManagerInternal;->updateOomAdj(I)V

    return-void
.end method
