.class public Lcom/android/server/accessibility/ProxyManager$2;
.super Ljava/lang/Object;
.source "ProxyManager.java"

# interfaces
.implements Landroid/companion/virtual/VirtualDeviceManager$VirtualDeviceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/accessibility/ProxyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/accessibility/ProxyManager;)V
    .locals 0

    .line 224
    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVirtualDeviceClosed(I)V
    .locals 0

    .line 227
    iget-object p0, p0, Lcom/android/server/accessibility/ProxyManager$2;->this$0:Lcom/android/server/accessibility/ProxyManager;

    invoke-virtual {p0, p1}, Lcom/android/server/accessibility/ProxyManager;->clearConnections(I)V

    return-void
.end method
