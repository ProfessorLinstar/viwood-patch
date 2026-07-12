.class public Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;
.super Lcom/android/server/input/UEventManager$UEventListener;
.source "SysfsNodeMonitor.java"


# instance fields
.field public mHasReceivedPowerSupplyNotification:Z

.field public mHasReceivedRemovalNotification:Z

.field public final synthetic this$0:Lcom/android/server/input/SysfsNodeMonitor;


# direct methods
.method public static synthetic $r8$lambda$A8GB7pJL44mEC8RsWsS_eXkLo9c(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->lambda$onUEvent$0(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/input/SysfsNodeMonitor;)V
    .locals 0

    .line 146
    iput-object p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-direct {p0}, Lcom/android/server/input/UEventManager$UEventListener;-><init>()V

    const/4 p1, 0x0

    .line 148
    iput-boolean p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    .line 149
    iput-boolean p1, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    return-void
.end method


# virtual methods
.method public final handleUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 5

    .line 159
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 160
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UEventListener: Received UEvent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    :cond_0
    const-string v0, "SUBSYSTEM"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DEVPATH"

    .line 164
    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->nullIfEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 165
    const-string v2, "ACTION"

    invoke-virtual {p1, v2}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 171
    iget-boolean v2, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    const/4 v3, 0x1

    if-nez v2, :cond_7

    const-string v2, "REMOVE"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_1

    .line 176
    :cond_1
    const-string v2, "LEDS"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "ADD"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetDEBUG()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 179
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Reconfiguring sysfs node because \'leds\' node was added: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    :cond_2
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {p0}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$fgetmNative(Lcom/android/server/input/SysfsNodeMonitor;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    return-void

    .line 186
    :cond_3
    const-string v2, "POWER_SUPPLY"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 187
    iget-boolean v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 194
    :cond_4
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 195
    invoke-static {}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reconfiguring sysfs node because \'power_supply\' node had action \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\': "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    :cond_5
    iput-boolean v3, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedPowerSupplyNotification:Z

    .line 199
    iget-object p0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {p0}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$fgetmNative(Lcom/android/server/input/SysfsNodeMonitor;)Lcom/android/server/input/NativeInputManagerService;

    move-result-object p0

    invoke-interface {p0, v1}, Lcom/android/server/input/NativeInputManagerService;->sysfsNodeChanged(Ljava/lang/String;)V

    :cond_6
    :goto_0
    return-void

    .line 172
    :cond_7
    :goto_1
    iput-boolean v3, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->mHasReceivedRemovalNotification:Z

    return-void
.end method

.method public final synthetic lambda$onUEvent$0(Landroid/os/UEventObserver$UEvent;)V
    .locals 0

    .line 155
    invoke-virtual {p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->handleUEvent(Landroid/os/UEventObserver$UEvent;)V

    return-void
.end method

.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 2

    .line 155
    iget-object v0, p0, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;->this$0:Lcom/android/server/input/SysfsNodeMonitor;

    invoke-static {v0}, Lcom/android/server/input/SysfsNodeMonitor;->-$$Nest$fgetmHandler(Lcom/android/server/input/SysfsNodeMonitor;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/SysfsNodeMonitor$SysfsNodeAddedListener;Landroid/os/UEventObserver$UEvent;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
