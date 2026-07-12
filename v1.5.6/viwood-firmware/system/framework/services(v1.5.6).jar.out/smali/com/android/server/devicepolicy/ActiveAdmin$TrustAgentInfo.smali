.class public Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;
.super Ljava/lang/Object;
.source "ActiveAdmin.java"


# instance fields
.field public options:Landroid/os/PersistableBundle;


# direct methods
.method public constructor <init>(Landroid/os/PersistableBundle;)V
    .locals 0

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 250
    iput-object p1, p0, Lcom/android/server/devicepolicy/ActiveAdmin$TrustAgentInfo;->options:Landroid/os/PersistableBundle;

    return-void
.end method
