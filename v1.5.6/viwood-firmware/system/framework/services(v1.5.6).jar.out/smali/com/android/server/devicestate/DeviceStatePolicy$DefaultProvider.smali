.class public final Lcom/android/server/devicestate/DeviceStatePolicy$DefaultProvider;
.super Ljava/lang/Object;
.source "DeviceStatePolicy.java"

# interfaces
.implements Lcom/android/server/devicestate/DeviceStatePolicy$Provider;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public instantiate(Landroid/content/Context;)Lcom/android/server/devicestate/DeviceStatePolicy;
    .locals 0

    .line 57
    new-instance p0, Lcom/android/server/policy/DeviceStatePolicyImpl;

    invoke-direct {p0, p1}, Lcom/android/server/policy/DeviceStatePolicyImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method
