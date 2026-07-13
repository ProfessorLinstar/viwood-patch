.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iput-object p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda6;->f$1:Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;

    invoke-static {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->$r8$lambda$D3T8BY1IWQiWaMOHlE-dHSE5Kwc(Lcom/android/server/accessibility/ProxyManager;Lcom/android/server/accessibility/ProxyAccessibilityServiceConnection;)V

    return-void
.end method
