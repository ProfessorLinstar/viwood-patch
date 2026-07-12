.class public Lcom/android/server/policy/SideFpsEventHandler;
.super Ljava/lang/Object;
.source "SideFpsEventHandler.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public mBiometricState:I

.field public final mContext:Landroid/content/Context;

.field public mDialog:Lcom/android/server/policy/SideFpsToast;

.field public mDialogProvider:Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;

.field public final mDismissDialogTimeout:I

.field public mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field public final mHandler:Landroid/os/Handler;

.field public mLastPowerPressTime:J

.field public final mPowerManager:Landroid/os/PowerManager;

.field public final mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final mTurnOffDialog:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$7WCpULzQqurwXvcr-S5fl0eDrnQ(Lcom/android/server/policy/SideFpsEventHandler;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$shouldConsumeSinglePress$2(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$hUl7AR5H7QymGA_diiCu63ix0v4(Lcom/android/server/policy/SideFpsEventHandler;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/policy/SideFpsEventHandler;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$rrQJZCWA_XBACvHifL-BSzsAKtA(Landroid/content/Context;)Lcom/android/server/policy/SideFpsToast;
    .locals 2

    .line 85
    new-instance v0, Lcom/android/server/policy/SideFpsToast;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsToast;-><init>(Landroid/content/Context;)V

    .line 86
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v1, 0x7e1

    .line 87
    invoke-virtual {p0, v1}, Landroid/view/Window;->setType(I)V

    const/4 p0, 0x1

    .line 88
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityManager(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/server/policy/SideFpsEventHandler;)Lcom/android/server/policy/SideFpsToast;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/policy/SideFpsEventHandler;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSideFpsEventHandlerReady(Lcom/android/server/policy/SideFpsEventHandler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBiometricState(Lcom/android/server/policy/SideFpsEventHandler;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDialog(Lcom/android/server/policy/SideFpsEventHandler;Lcom/android/server/policy/SideFpsToast;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdismissDialog(Lcom/android/server/policy/SideFpsEventHandler;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;)V
    .locals 1

    .line 84
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/policy/SideFpsEventHandler;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/PowerManager;Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;)V
    .locals 1

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mTurnOffDialog:Ljava/lang/Runnable;

    .line 99
    iput-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    .line 100
    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    .line 101
    const-class p2, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/accessibility/AccessibilityManager;

    iput-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 102
    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 p2, 0x0

    .line 103
    iput p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    .line 104
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 105
    iput-object p4, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogProvider:Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;

    .line 107
    new-instance p2, Lcom/android/server/policy/SideFpsEventHandler$1;

    invoke-direct {p2, p0}, Lcom/android/server/policy/SideFpsEventHandler$1;-><init>(Lcom/android/server/policy/SideFpsEventHandler;)V

    new-instance p3, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.SCREEN_OFF"

    invoke-direct {p3, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e013a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDismissDialogTimeout:I

    return-void
.end method


# virtual methods
.method public final dismissDialog(Ljava/lang/String;)V
    .locals 2

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Dismissing dialog with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SideFpsEventHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 254
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public final goToSleep(J)V
    .locals 2

    .line 177
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mPowerManager:Landroid/os/PowerManager;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/os/PowerManager;->goToSleep(JII)V

    return-void
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    .line 73
    const-string v0, "mTurnOffDialog"

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SideFpsEventHandler;->dismissDialog(Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic lambda$shouldConsumeSinglePress$2(J)V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mTurnOffDialog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    const-string v0, "SideFpsEventHandler"

    const-string v1, "Detected a tap to turn off dialog, ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mTurnOffDialog:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 162
    :cond_0
    const-string v0, "Enroll Power Press"

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/policy/SideFpsEventHandler;->showDialog(JLjava/lang/String;)V

    .line 163
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 164
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/server/policy/SideFpsEventHandler;->mTurnOffDialog:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDismissDialogTimeout:I

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method public notifyPowerPressed()V
    .locals 2

    .line 132
    const-string v0, "SideFpsEventHandler"

    const-string/jumbo v1, "notifyPowerPressed"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 136
    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-nez p0, :cond_1

    return-void

    .line 139
    :cond_1
    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->onPowerPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    iget-wide v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mLastPowerPressTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/SideFpsEventHandler;->goToSleep(J)V

    return-void
.end method

.method public onFingerprintSensorReady()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 190
    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    .line 196
    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/policy/SideFpsEventHandler$2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;Landroid/hardware/fingerprint/FingerprintManager;)V

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    return-void
.end method

.method public shouldConsumeSinglePress(J)Z
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mSideFpsEventHandlerReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 154
    :cond_0
    iget v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mBiometricState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 p0, 0x3

    if-eq v0, p0, :cond_1

    return v1

    :cond_1
    return v2

    .line 156
    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/policy/SideFpsEventHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/policy/SideFpsEventHandler;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v2
.end method

.method public final showDialog(JLjava/lang/String;)V
    .locals 2

    .line 259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Showing dialog with reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "SideFpsEventHandler"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroid/app/Dialog;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 261
    const-string p0, "Ignoring show dialog"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 264
    :cond_0
    iget-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialogProvider:Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;

    iget-object v0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mContext:Landroid/content/Context;

    invoke-interface {p3, v0}, Lcom/android/server/policy/SideFpsEventHandler$DialogProvider;->provideDialog(Landroid/content/Context;)Lcom/android/server/policy/SideFpsToast;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    .line 265
    iput-wide p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mLastPowerPressTime:J

    .line 266
    invoke-virtual {p3}, Landroid/app/Dialog;->show()V

    .line 267
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    invoke-virtual {p1, p0}, Lcom/android/server/policy/SideFpsToast;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object p1, p0, Lcom/android/server/policy/SideFpsEventHandler;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 269
    iget-object p0, p0, Lcom/android/server/policy/SideFpsEventHandler;->mDialog:Lcom/android/server/policy/SideFpsToast;

    invoke-virtual {p0}, Lcom/android/server/policy/SideFpsToast;->addAccessibilityDelegate()V

    :cond_1
    return-void
.end method
