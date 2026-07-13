.class public Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;
.super Landroid/os/Handler;
.source "SingleKeyGestureDetector.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/SingleKeyGestureDetector;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/SingleKeyGestureDetector;Landroid/os/Looper;)V
    .locals 0

    .line 454
    iput-object p1, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    .line 455
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 460
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;

    .line 461
    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->-$$Nest$fgetactiveRule(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;

    move-result-object v1

    .line 462
    const-string v2, "SingleKeyGesture"

    if-nez v1, :cond_0

    .line 463
    const-string p0, "No active rule."

    invoke-static {v2, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 467
    :cond_0
    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->-$$Nest$fgetkeyCode(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I

    move-result v3

    .line 468
    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->-$$Nest$fgetpressCount(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I

    move-result v4

    .line 469
    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->-$$Nest$fgetdisplayId(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I

    move-result v5

    .line 470
    iget p1, p1, Landroid/os/Message;->what:I

    if-eqz p1, :cond_8

    const/4 v6, 0x1

    if-eq p1, v6, :cond_6

    const/4 v7, 0x2

    const-string v8, " on display "

    if-eq p1, v7, :cond_3

    const/4 v6, 0x3

    if-eq p1, v6, :cond_1

    return-void

    .line 472
    :cond_1
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 473
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Detect key up "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide v2

    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->-$$Nest$fgetdeviceId(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I

    move-result v6

    invoke-static {v0}, Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;->-$$Nest$fgetmetaState(Lcom/android/server/policy/SingleKeyGestureDetector$MessageObject;)I

    move-result v7

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onKeyUp(JIIII)V

    return-void

    .line 493
    :cond_3
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 494
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detect press "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", count "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ne v4, v6, :cond_5

    .line 498
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1, v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onPress(JI)V

    return-void

    .line 500
    :cond_5
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1, v4, v5}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onMultiPress(JII)V

    return-void

    .line 486
    :cond_6
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 487
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detect very long press "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 487
    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    :cond_7
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onVeryLongPress(J)V

    return-void

    .line 480
    :cond_8
    invoke-static {}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 481
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Detect long press "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/view/KeyEvent;->keyCodeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_9
    iget-object p0, p0, Lcom/android/server/policy/SingleKeyGestureDetector$KeyHandler;->this$0:Lcom/android/server/policy/SingleKeyGestureDetector;

    invoke-static {p0}, Lcom/android/server/policy/SingleKeyGestureDetector;->-$$Nest$fgetmLastDownTime(Lcom/android/server/policy/SingleKeyGestureDetector;)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Lcom/android/server/policy/SingleKeyGestureDetector$SingleKeyRule;->onLongPress(J)V

    return-void
.end method
