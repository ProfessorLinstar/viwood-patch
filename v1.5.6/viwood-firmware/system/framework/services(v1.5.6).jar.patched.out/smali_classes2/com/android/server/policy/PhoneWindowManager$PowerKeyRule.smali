.class public final Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 2798
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x1a

    .line 2799
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getLongPressTimeoutMs()J
    .locals 2

    .line 2828
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetResolvedLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 2829
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-wide v0, p0, Lcom/android/server/policy/PhoneWindowManager;->mLongPressOnPowerAssistantTimeoutMs:J

    return-wide v0

    .line 2831
    :cond_0
    invoke-super {p0}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->getLongPressTimeoutMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxMultiPressCount()I
    .locals 0

    .line 2815
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetMaxMultiPressPowerCount(Lcom/android/server/policy/PhoneWindowManager;)I

    move-result p0

    return p0
.end method

.method public onKeyUp(JIIII)V
    .locals 0

    .line 2859
    iget-object p5, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p5}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmShouldEarlyShortPressOnPower(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p5

    if-eqz p5, :cond_0

    const/4 p5, 0x1

    if-ne p3, p5, :cond_0

    .line 2860
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1, p2, p5, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JII)V

    :cond_0
    return-void
.end method

.method public onLongPress(J)V
    .locals 1

    .line 2837
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmSingleKeyGestureDetector(Lcom/android/server/policy/PhoneWindowManager;)Lcom/android/server/policy/SingleKeyGestureDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/policy/SingleKeyGestureDetector;->beganFromNonInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmSupportLongPressPowerWhenNonInteractive(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2839
    const-string p0, "WindowManager"

    const-string p1, "Not support long press power when device is not interactive."

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2843
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0, p1, p2}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerLongPress(Lcom/android/server/policy/PhoneWindowManager;J)V

    return-void
.end method

.method public onMultiPress(JII)V
    .locals 0

    .line 2854
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JII)V

    return-void
.end method

.method public onPress(JI)V
    .locals 1

    .line 2820
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$fgetmShouldEarlyShortPressOnPower(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2823
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/policy/PhoneWindowManager;->powerPress(JII)V

    return-void
.end method

.method public onVeryLongPress(J)V
    .locals 0

    .line 2848
    iget-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object p1, p1, Lcom/android/server/policy/PhoneWindowManager;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {p1}, Landroid/app/ActivityManagerInternal;->prepareForPossibleShutdown()V

    .line 2849
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mpowerVeryLongPress(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method public supportLongPress()Z
    .locals 0

    .line 2804
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method

.method public supportVeryLongPress()Z
    .locals 0

    .line 2809
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerKeyRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhasVeryLongPressOnPowerBehavior(Lcom/android/server/policy/PhoneWindowManager;)Z

    move-result p0

    return p0
.end method
