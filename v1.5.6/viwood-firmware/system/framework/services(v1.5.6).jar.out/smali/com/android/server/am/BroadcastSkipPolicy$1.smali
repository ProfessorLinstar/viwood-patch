.class public Lcom/android/server/am/BroadcastSkipPolicy$1;
.super Ljava/lang/Object;
.source "BroadcastSkipPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/BroadcastSkipPolicy;

.field public final synthetic val$intent:Landroid/content/Intent;

.field public final synthetic val$receivingUserId:I


# direct methods
.method public constructor <init>(Lcom/android/server/am/BroadcastSkipPolicy;Landroid/content/Intent;I)V
    .locals 0

    .line 753
    iput-object p1, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->this$0:Lcom/android/server/am/BroadcastSkipPolicy;

    iput-object p2, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$intent:Landroid/content/Intent;

    iput p3, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$receivingUserId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 756
    iget-object v0, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->this$0:Lcom/android/server/am/BroadcastSkipPolicy;

    invoke-static {v0}, Lcom/android/server/am/BroadcastSkipPolicy;->-$$Nest$fgetmService(Lcom/android/server/am/BroadcastSkipPolicy;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$intent:Landroid/content/Intent;

    new-instance v2, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/am/BroadcastSkipPolicy$1;->val$receivingUserId:I

    invoke-direct {v2, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
