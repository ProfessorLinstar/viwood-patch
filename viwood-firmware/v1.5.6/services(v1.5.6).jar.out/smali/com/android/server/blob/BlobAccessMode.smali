.class public Lcom/android/server/blob/BlobAccessMode;
.super Ljava/lang/Object;
.source "BlobAccessMode.java"


# instance fields
.field public mAccessType:I

.field public final mAllowedPackages:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 67
    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 69
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    return-void
.end method

.method public static createFromXml(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/blob/BlobAccessMode;
    .locals 4

    .line 185
    new-instance v0, Lcom/android/server/blob/BlobAccessMode;

    invoke-direct {v0}, Lcom/android/server/blob/BlobAccessMode;-><init>()V

    .line 187
    const-string/jumbo v1, "t"

    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->readIntAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)I

    move-result v1

    .line 188
    iput v1, v0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 190
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v1

    .line 191
    :cond_0
    :goto_0
    invoke-static {p0, v1}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 192
    const-string/jumbo v2, "wl"

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 193
    const-string/jumbo v2, "p"

    invoke-static {p0, v2}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 194
    const-string v3, "ct"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readByteArrayAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)[B

    move-result-object v3

    .line 195
    invoke-virtual {v0, v2, v3}, Lcom/android/server/blob/BlobAccessMode;->allowPackageAccess(Ljava/lang/String;[B)V

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public allow(Lcom/android/server/blob/BlobAccessMode;)V
    .locals 2

    .line 72
    iget v0, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    iget-object v1, p1, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Landroid/util/ArraySet;)V

    .line 75
    :cond_0
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    iget p1, p1, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return-void
.end method

.method public allowPackageAccess(Ljava/lang/String;[B)V
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    .line 88
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->create(Ljava/lang/String;[B)Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowPublicAccess()V
    .locals 1

    .line 79
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return-void
.end method

.method public allowSameSignatureAccess()V
    .locals 1

    .line 83
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return-void
.end method

.method public final checkSignatures(II)Z
    .locals 2

    .line 139
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 141
    :try_start_0
    const-class p0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/PackageManagerInternal;

    .line 142
    invoke-virtual {p0, p1, p2}, Landroid/content/pm/PackageManagerInternal;->checkUidSignaturesForAllUsers(II)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 144
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 145
    throw p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accessType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    int-to-long v1, v1

    const-class v3, Lcom/android/server/blob/BlobAccessMode;

    const-string v4, "ACCESS_TYPE_"

    invoke-static {v3, v4, v1, v2}, Landroid/util/DebugUtils;->flagsToString(Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 159
    const-string v0, "Explicitly allowed pkgs:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-string p0, " (Empty)"

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 163
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 164
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 165
    iget-object v2, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    invoke-virtual {v2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 167
    :cond_1
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getAccessType()I
    .locals 0

    .line 149
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    return p0
.end method

.method public getAllowedPackagesCount()I
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public isAccessAllowedForCaller(Landroid/content/Context;Ljava/lang/String;II)Z
    .locals 3

    .line 108
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    .line 113
    invoke-virtual {p0, p3, p4}, Lcom/android/server/blob/BlobAccessMode;->checkSignatures(II)Z

    move-result p4

    if-eqz p4, :cond_1

    return v2

    .line 118
    :cond_1
    iget p4, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 p4, p4, 0x8

    const/4 v0, 0x0

    if-eqz p4, :cond_3

    .line 119
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 121
    invoke-virtual {p1, p3, v0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    move p3, v0

    .line 122
    :goto_0
    iget-object p4, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p4}, Landroid/util/ArraySet;->size()I

    move-result p4

    if-ge p3, p4, :cond_3

    .line 123
    iget-object p4, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {p4, p3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 124
    iget-object v1, p4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p4, p4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    .line 125
    invoke-virtual {p1, p2, p4, v2}, Landroid/content/pm/PackageManager;->hasSigningCertificate(Ljava/lang/String;[BI)Z

    move-result p4

    if-eqz p4, :cond_2

    return v2

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public isPackageAccessAllowed(Ljava/lang/String;[B)Z
    .locals 1

    .line 100
    iget v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 103
    :cond_0
    iget-object p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-static {p1, p2}, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->create(Ljava/lang/String;[B)Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPublicAccessAllowed()Z
    .locals 0

    .line 92
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isSameSignatureAccessAllowed()Z
    .locals 0

    .line 96
    iget p0, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public writeToXml(Lorg/xmlpull/v1/XmlSerializer;)V
    .locals 7

    .line 172
    const-string/jumbo v0, "t"

    iget v1, p0, Lcom/android/server/blob/BlobAccessMode;->mAccessType:I

    invoke-static {p1, v0, v1}, Lcom/android/internal/util/XmlUtils;->writeIntAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;I)V

    .line 173
    iget-object v0, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    const/4 v2, 0x0

    .line 174
    const-string/jumbo v3, "wl"

    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 175
    iget-object v4, p0, Lcom/android/server/blob/BlobAccessMode;->mAllowedPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;

    .line 176
    iget-object v5, v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->packageName:Ljava/lang/String;

    const-string/jumbo v6, "p"

    invoke-static {p1, v6, v5}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 177
    const-string v5, "ct"

    iget-object v4, v4, Lcom/android/server/blob/BlobAccessMode$PackageIdentifier;->certificate:[B

    invoke-static {p1, v5, v4}, Lcom/android/internal/util/XmlUtils;->writeByteArrayAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;[B)V

    .line 178
    invoke-interface {p1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
