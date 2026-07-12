.class public final Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;
.super Ljava/lang/Object;
.source "TextClassificationManagerService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mServicePackageOverride:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/textclassifier/TextClassificationManagerService;Landroid/content/Context;)V
    .locals 0

    .line 1198
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1199
    iput-object p2, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mContext:Landroid/content/Context;

    .line 1200
    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    .line 1212
    iget-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$fgetmSettings(Lcom/android/server/textclassifier/TextClassificationManagerService;)Landroid/view/textclassifier/TextClassificationConstants;

    move-result-object p1

    .line 1213
    invoke-virtual {p1}, Landroid/view/textclassifier/TextClassificationConstants;->getTextClassifierServicePackageOverride()Ljava/lang/String;

    move-result-object p1

    .line 1214
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1217
    :cond_0
    iput-object p1, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mServicePackageOverride:Ljava/lang/String;

    .line 1218
    iget-object p0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->this$0:Lcom/android/server/textclassifier/TextClassificationManagerService;

    invoke-static {p0, p1}, Lcom/android/server/textclassifier/TextClassificationManagerService;->-$$Nest$monTextClassifierServicePackageOverrideChanged(Lcom/android/server/textclassifier/TextClassificationManagerService;Ljava/lang/String;)V

    return-void
.end method

.method public registerObserver()V
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/android/server/textclassifier/TextClassificationManagerService$TextClassifierSettingsListener;->mContext:Landroid/content/Context;

    .line 1206
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    .line 1204
    const-string/jumbo v1, "textclassifier"

    invoke-static {v1, v0, p0}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
