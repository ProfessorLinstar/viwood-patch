.class public final Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 2869
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 p1, 0x4

    .line 2870
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getMaxMultiPressCount()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onLongPress(J)V
    .locals 0

    .line 2890
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mbackLongPress(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method public onPress(JI)V
    .locals 0

    .line 2885
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-boolean p2, p1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mbackKeyPress(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    or-int/2addr p0, p2

    iput-boolean p0, p1, Lcom/android/server/policy/PhoneWindowManager;->mBackKeyHandled:Z

    return-void
.end method

.method public supportLongPress()Z
    .locals 0

    .line 2875
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$BackKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasLongPressOnBackBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method
