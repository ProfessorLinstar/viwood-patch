.class public final synthetic Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/accessibility/ProxyManager;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/accessibility/ProxyManager;I)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iput p2, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 0
    iget-object v0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$0:Lcom/android/server/accessibility/ProxyManager;

    iget p0, p0, Lcom/android/server/accessibility/ProxyManager$$ExternalSyntheticLambda4;->f$1:I

    invoke-static {v0, p0}, Lcom/android/server/accessibility/ProxyManager;->$r8$lambda$dXip0VjKEz0EtlE9HBuYxOuiv2A(Lcom/android/server/accessibility/ProxyManager;I)V

    return-void
.end method
