.class public Lcom/android/server/policy/PhoneWindowManager$6;
.super Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;II)V
    .locals 0

    .line 2658
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2, p3}, Lcom/android/server/policy/KeyCombinationManager$TwoKeysCombinationRule;-><init>(II)V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    .line 2667
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mcancelPendingScreenshotChordAction(Lcom/android/server/policy/PhoneWindowManager;)V

    return-void
.end method

.method public execute()V
    .locals 4

    .line 2661
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/policy/PhoneWindowManager;->mPowerKeyHandled:Z

    .line 2662
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$6;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    .line 2663
    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mgetScreenshotChordLongPressDelay(Lcom/android/server/policy/PhoneWindowManager;)J

    move-result-wide v2

    .line 2662
    invoke-static {p0, v1, v2, v3}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$minterceptScreenshotChord(Lcom/android/server/policy/PhoneWindowManager;IJ)V

    return-void
.end method
