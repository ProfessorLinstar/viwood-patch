.class public final Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;
.super Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;
.source "PhoneWindowManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .locals 0

    .line 3033
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x137

    .line 3034
    invoke-direct {p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getMaxMultiPressCount()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public onKeyUp(JIIII)V
    .locals 0

    const/4 p1, 0x1

    if-eq p3, p1, :cond_0

    return-void

    .line 3053
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$StylusTailButtonRule;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const/16 p1, 0x21

    const/16 p2, 0x137

    invoke-static {p0, p1, p5, p2, p6}, Lcom/android/server/policy/PhoneWindowManager;->-$$Nest$mhandleKeyGestureInKeyGestureController(Lcom/android/server/policy/PhoneWindowManager;IIII)V

    return-void
.end method

.method public onPress(JI)V
    .locals 0

    .line 0
    return-void
.end method
