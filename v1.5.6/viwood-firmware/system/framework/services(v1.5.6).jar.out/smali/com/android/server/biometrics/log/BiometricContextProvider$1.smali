.class public Lcom/android/server/biometrics/log/BiometricContextProvider$1;
.super Landroid/content/BroadcastReceiver;
.source "BiometricContextProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/BiometricContextProvider;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 95
    iget-object p0, p0, Lcom/android/server/biometrics/log/BiometricContextProvider$1;->this$0:Lcom/android/server/biometrics/log/BiometricContextProvider;

    const-string p1, "android.intent.extra.DOCK_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/server/biometrics/log/BiometricContextProvider;->-$$Nest$fputmDockState(Lcom/android/server/biometrics/log/BiometricContextProvider;I)V

    return-void
.end method
