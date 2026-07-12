.class public Lcom/android/server/am/UserController$4;
.super Ljava/lang/Object;
.source "UserController.java"

# interfaces
.implements Lcom/android/server/am/UserState$KeyEvictedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/UserController;

.field public final synthetic val$userStartMode:I


# direct methods
.method public static synthetic $r8$lambda$mxjguYJ_KfC3A1rONydf9dkk7_Q(Lcom/android/server/am/UserController$4;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController$4;->lambda$keyEvicted$0(II)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/UserController;I)V
    .locals 0

    .line 980
    iput-object p1, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    iput p2, p0, Lcom/android/server/am/UserController$4;->val$userStartMode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyEvicted(I)V
    .locals 3

    .line 985
    iget-object v0, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-static {v0}, Lcom/android/server/am/UserController;->-$$Nest$fgetmHandler(Lcom/android/server/am/UserController;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/UserController$4;->val$userStartMode:I

    new-instance v2, Lcom/android/server/am/UserController$4$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/server/am/UserController$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/UserController$4;II)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$keyEvicted$0(II)V
    .locals 0

    .line 985
    iget-object p0, p0, Lcom/android/server/am/UserController$4;->this$0:Lcom/android/server/am/UserController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UserController;->startUser(II)Z

    return-void
.end method
