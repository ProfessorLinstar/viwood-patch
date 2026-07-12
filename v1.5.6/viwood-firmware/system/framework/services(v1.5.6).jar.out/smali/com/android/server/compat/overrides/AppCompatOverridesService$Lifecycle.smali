.class public final Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "AppCompatOverridesService.java"


# instance fields
.field public mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 332
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 3

    .line 337
    new-instance v0, Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/compat/overrides/AppCompatOverridesService;-><init>(Landroid/content/Context;Lcom/android/server/compat/overrides/AppCompatOverridesService-IA;)V

    iput-object v0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;->mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    .line 338
    invoke-virtual {v0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->registerDeviceConfigListeners()V

    .line 339
    iget-object p0, p0, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;->mService:Lcom/android/server/compat/overrides/AppCompatOverridesService;

    invoke-virtual {p0}, Lcom/android/server/compat/overrides/AppCompatOverridesService;->registerPackageReceiver()V

    return-void
.end method
