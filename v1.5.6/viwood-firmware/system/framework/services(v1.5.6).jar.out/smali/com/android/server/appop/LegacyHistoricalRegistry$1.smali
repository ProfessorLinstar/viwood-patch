.class public Lcom/android/server/appop/LegacyHistoricalRegistry$1;
.super Landroid/database/ContentObserver;
.source "LegacyHistoricalRegistry.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

.field public final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    .line 226
    iput-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iput-object p3, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 229
    iget-object p1, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->this$0:Lcom/android/server/appop/LegacyHistoricalRegistry;

    iget-object p0, p0, Lcom/android/server/appop/LegacyHistoricalRegistry$1;->val$resolver:Landroid/content/ContentResolver;

    invoke-static {p1, p0}, Lcom/android/server/appop/LegacyHistoricalRegistry;->-$$Nest$mupdateParametersFromSetting(Lcom/android/server/appop/LegacyHistoricalRegistry;Landroid/content/ContentResolver;)V

    return-void
.end method
