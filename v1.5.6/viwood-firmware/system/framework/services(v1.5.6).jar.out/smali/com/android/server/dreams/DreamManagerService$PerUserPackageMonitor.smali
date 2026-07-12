.class public final Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DreamManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0

    .line 234
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 0

    .line 237
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->getChangingUserId()I

    move-result p2

    .line 239
    iget-object p0, p0, Lcom/android/server/dreams/DreamManagerService$PerUserPackageMonitor;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-$$Nest$mupdateDreamOnPackageRemoved(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;I)V

    return-void
.end method
