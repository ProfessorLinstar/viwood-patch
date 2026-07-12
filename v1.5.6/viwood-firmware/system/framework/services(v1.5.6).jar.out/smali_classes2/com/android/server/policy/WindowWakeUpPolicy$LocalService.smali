.class public final Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;
.super Ljava/lang/Object;
.source "WindowWakeUpPolicy.java"

# interfaces
.implements Lcom/android/server/policy/WindowWakeUpPolicyInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/policy/WindowWakeUpPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/policy/WindowWakeUpPolicy;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;-><init>(Lcom/android/server/policy/WindowWakeUpPolicy;)V

    return-void
.end method


# virtual methods
.method public setInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V
    .locals 0

    .line 104
    iget-object p0, p0, Lcom/android/server/policy/WindowWakeUpPolicy$LocalService;->this$0:Lcom/android/server/policy/WindowWakeUpPolicy;

    invoke-static {p0, p1}, Lcom/android/server/policy/WindowWakeUpPolicy;->-$$Nest$fputmInputWakeUpDelegate(Lcom/android/server/policy/WindowWakeUpPolicy;Lcom/android/server/policy/WindowWakeUpPolicyInternal$InputWakeUpDelegate;)V

    return-void
.end method
