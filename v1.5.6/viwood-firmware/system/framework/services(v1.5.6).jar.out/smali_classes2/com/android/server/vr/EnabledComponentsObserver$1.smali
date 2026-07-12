.class public Lcom/android/server/vr/EnabledComponentsObserver$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "EnabledComponentsObserver.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/vr/EnabledComponentsObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/vr/EnabledComponentsObserver;Z)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-direct {p0, p2}, Lcom/android/internal/content/PackageMonitor;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {v0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    .line 110
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/content/PackageMonitor;->onHandleForceStop(Landroid/content/Intent;[Ljava/lang/String;IZ)Z

    move-result p0

    return p0
.end method

.method public onPackageDisappeared(Ljava/lang/String;I)V
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method

.method public onSomePackagesChanged()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/server/vr/EnabledComponentsObserver$1;->this$0:Lcom/android/server/vr/EnabledComponentsObserver;

    invoke-virtual {p0}, Lcom/android/server/vr/EnabledComponentsObserver;->onPackagesChanged()V

    return-void
.end method
