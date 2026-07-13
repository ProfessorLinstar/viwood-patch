.class public Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)V
    .locals 0

    .line 2128
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 2131
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->-$$Nest$fgetmPendingHomeKeyEvent(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Landroid/view/KeyEvent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2132
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->-$$Nest$fgetmPendingHomeKeyEvent(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Landroid/view/KeyEvent;

    move-result-object v0

    const/4 v2, 0x1

    invoke-static {v1, v0, v2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mnotifyKeyGestureCompleted(Lcom/android/server/policy/PhoneWindowManager;Landroid/view/KeyEvent;I)V

    .line 2134
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    iget-object v1, v0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->-$$Nest$fgetmPendingHomeKeyEvent(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/KeyEvent;->getDisplayId()I

    move-result v0

    invoke-static {v1, v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleShortPressOnHome(Lcom/android/server/policy/PhoneWindowManager;I)V

    .line 2135
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler$1;->this$1:Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;->-$$Nest$fputmPendingHomeKeyEvent(Lcom/android/server/policy/PhoneWindowManager$DisplayHomeButtonHandler;Landroid/view/KeyEvent;)V

    :cond_0
    return-void
.end method
