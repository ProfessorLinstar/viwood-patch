.class public Lcom/android/server/pm/PreferredActivity;
.super Lcom/android/server/pm/WatchedIntentFilter;
.source "PreferredActivity.java"

# interfaces
.implements Lcom/android/server/pm/PreferredComponent$Callbacks;


# instance fields
.field public final mPref:Lcom/android/server/pm/PreferredComponent;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Landroid/content/IntentFilter;)V

    move-object p1, p0

    .line 57
    new-instance p0, Lcom/android/server/pm/PreferredComponent;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    iput-object p0, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 58
    invoke-direct {p1}, Lcom/android/server/pm/PreferredActivity;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p0

    iput-object p0, p1, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 74
    new-instance v0, Lcom/android/server/pm/PreferredComponent;

    invoke-direct {v0, p0, p1}, Lcom/android/server/pm/PreferredComponent;-><init>(Lcom/android/server/pm/PreferredComponent$Callbacks;Lcom/android/modules/utils/TypedXmlPullParser;)V

    iput-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 75
    invoke-direct {p0}, Lcom/android/server/pm/PreferredActivity;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/PreferredActivity;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/server/pm/WatchedIntentFilter;-><init>(Lcom/android/server/pm/WatchedIntentFilter;)V

    .line 69
    iget-object p1, p1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 70
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/PreferredActivity;Lcom/android/server/pm/PreferredActivity-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/PreferredActivity;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V
    .locals 0

    .line 63
    iget-object p1, p1, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/pm/PreferredActivity;-><init>(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    .line 45
    new-instance v0, Lcom/android/server/pm/PreferredActivity$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/PreferredActivity$1;-><init>(Lcom/android/server/pm/PreferredActivity;Lcom/android/server/pm/PreferredActivity;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method


# virtual methods
.method public onReadTag(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .locals 1

    .line 87
    const-string v0, "filter"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 91
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p2}, Landroid/content/IntentFilter;->readFromXml(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 97
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown element under <preferred-activities>: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    .line 97
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 99
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public snapshot()Lcom/android/server/pm/PreferredActivity;
    .locals 0

    .line 115
    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredActivity;

    return-object p0
.end method

.method public bridge synthetic snapshot()Lcom/android/server/pm/WatchedIntentFilter;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivity;->snapshot()Lcom/android/server/pm/PreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 33
    invoke-virtual {p0}, Lcom/android/server/pm/PreferredActivity;->snapshot()Lcom/android/server/pm/PreferredActivity;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PreferredActivity{0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object p0, p0, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 111
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/PreferredComponent;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    const/4 p2, 0x0

    .line 80
    const-string v0, "filter"

    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 81
    iget-object p0, p0, Lcom/android/server/pm/WatchedIntentFilter;->mFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 82
    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
