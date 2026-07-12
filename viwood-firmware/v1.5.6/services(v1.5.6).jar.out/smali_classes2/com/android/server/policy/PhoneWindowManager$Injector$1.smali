.class public Lcom/android/server/policy/PhoneWindowManager$Injector$1;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Lcom/android/server/policy/keyguard/KeyguardStateMonitor$StateCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager$Injector;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager$Injector;)V
    .locals 0

    .line 2364
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$Injector$1;->this$0:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShowingChanged()V
    .locals 0

    .line 2372
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector$1;->this$0:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->-$$Nest$fgetmWindowManagerFuncs(Lcom/android/server/policy/PhoneWindowManager$Injector;)Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->onKeyguardShowingAndNotOccludedChanged()V

    return-void
.end method

.method public onTrustedChanged()V
    .locals 0

    .line 2367
    iget-object p0, p0, Lcom/android/server/policy/PhoneWindowManager$Injector$1;->this$0:Lcom/android/server/policy/PhoneWindowManager$Injector;

    invoke-static {p0}, Lcom/android/server/policy/PhoneWindowManager$Injector;->-$$Nest$fgetmWindowManagerFuncs(Lcom/android/server/policy/PhoneWindowManager$Injector;)Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->notifyKeyguardTrustedChanged()V

    return-void
.end method
