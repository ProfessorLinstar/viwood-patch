.class public Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"

# interfaces
.implements Lcom/android/server/usage/StorageStatsManagerLocal$StorageStatsAugmenter;


# instance fields
.field public final synthetic this$0:Lcom/android/server/blob/BlobStoreManagerService;


# direct methods
.method public static synthetic $r8$lambda$09GQ4O7CUp7tc8KN9H0XITkaxss(ILjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2

    .line 1330
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerUid()I

    move-result v0

    if-ne v0, p0, :cond_0

    .line 1331
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$AOwu0AzGPcvWk6fyNUbjQrOeVWE(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 2

    .line 1354
    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {p2, p0}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToUser(I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1355
    invoke-virtual {p2}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$FZLpR04WsIuPsBcEuY83wHm4zNQ(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2

    .line 1309
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getOwnerPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1310
    invoke-virtual {p2}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$PCh5holscxwZgRE7PY3-n1a4Q4E(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 0

    .line 1315
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p4, p0, p1, p2}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToLeasee(Ljava/lang/String;IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1317
    invoke-virtual {p4}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide p0

    invoke-virtual {p3, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$YheEsoybaSyuwWNs90pi4C34YYk(Ljava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobStoreSession;)V
    .locals 2

    .line 1350
    invoke-virtual {p1}, Lcom/android/server/blob/BlobStoreSession;->getSize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    return-void
.end method

.method public static synthetic $r8$lambda$eR8bA4NtZDdCgw2kiD3OH7Or04c(IZLjava/util/concurrent/atomic/AtomicLong;Lcom/android/server/blob/BlobMetadata;)V
    .locals 0

    .line 1336
    invoke-virtual {p3, p0, p1}, Lcom/android/server/blob/BlobMetadata;->shouldAttributeToLeasee(IZ)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1338
    invoke-virtual {p3}, Lcom/android/server/blob/BlobMetadata;->getSize()J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;)V
    .locals 0

    .line 1300
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/blob/BlobStoreManagerService;Lcom/android/server/blob/BlobStoreManagerService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;-><init>(Lcom/android/server/blob/BlobStoreManagerService;)V

    return-void
.end method


# virtual methods
.method public augmentStatsForPackageForUser(Landroid/content/pm/PackageStats;Ljava/lang/String;Landroid/os/UserHandle;Z)V
    .locals 4

    .line 1307
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1308
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;

    invoke-direct {v2, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 1312
    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1308
    invoke-static {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1314
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;

    invoke-direct {v1, p2, p3, p4, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Landroid/os/UserHandle;ZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1321
    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method

.method public augmentStatsForUid(Landroid/content/pm/PackageStats;IZ)V
    .locals 4

    .line 1327
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 1328
    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1329
    iget-object v2, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v3, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p2, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda0;-><init>(ILjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {v2, v3, v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1335
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p3, v1}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda1;-><init>(IZLjava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {p0, v0}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1342
    iget-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    add-long/2addr p2, v0

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method

.method public augmentStatsForUser(Landroid/content/pm/PackageStats;Landroid/os/UserHandle;)V
    .locals 5

    .line 1348
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 1349
    iget-object v1, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v2, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda4;

    invoke-direct {v2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda4;-><init>(Ljava/util/concurrent/atomic/AtomicLong;)V

    .line 1351
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 1349
    invoke-static {v1, v2, v3}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachSessionInUser(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;I)V

    .line 1353
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter;->this$0:Lcom/android/server/blob/BlobStoreManagerService;

    new-instance v1, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2, v0}, Lcom/android/server/blob/BlobStoreManagerService$BlobStorageStatsAugmenter$$ExternalSyntheticLambda5;-><init>(Landroid/os/UserHandle;Ljava/util/concurrent/atomic/AtomicLong;)V

    invoke-static {p0, v1}, Lcom/android/server/blob/BlobStoreManagerService;->-$$Nest$mforEachBlob(Lcom/android/server/blob/BlobStoreManagerService;Ljava/util/function/Consumer;)V

    .line 1359
    iget-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    add-long/2addr v1, v3

    iput-wide v1, p1, Landroid/content/pm/PackageStats;->dataSize:J

    return-void
.end method
