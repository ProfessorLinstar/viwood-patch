.class public final Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;
.super Ljava/lang/Object;
.source "ActivityInterceptorCallback.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
    client = .enum Landroid/annotation/SystemApi$Client;->SYSTEM_SERVER:Landroid/annotation/SystemApi$Client;
.end annotation


# instance fields
.field public final mActivityOptions:Landroid/app/ActivityOptions;

.field public final mActivityResolved:Z

.field public final mIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;)V
    .locals 1

    const/4 v0, 0x0

    .line 424
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;-><init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/app/ActivityOptions;Z)V
    .locals 0

    .line 440
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 441
    iput-object p1, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mIntent:Landroid/content/Intent;

    .line 442
    iput-object p2, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityOptions:Landroid/app/ActivityOptions;

    .line 443
    iput-boolean p3, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityResolved:Z

    return-void
.end method


# virtual methods
.method public getActivityOptions()Landroid/app/ActivityOptions;
    .locals 0

    .line 456
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityOptions:Landroid/app/ActivityOptions;

    return-object p0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public isActivityResolved()Z
    .locals 0

    .line 463
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityInterceptorCallback$ActivityInterceptResult;->mActivityResolved:Z

    return p0
.end method
