.class public final Lcom/android/server/pm/permission/LegacyPermission;
.super Ljava/lang/Object;
.source "LegacyPermission.java"


# instance fields
.field public final mGids:[I

.field public final mPermissionInfo:Landroid/content/pm/PermissionInfo;

.field public final mType:I

.field public final mUid:I


# direct methods
.method public constructor <init>(Landroid/content/pm/PermissionInfo;II[I)V
    .locals 0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 95
    iput p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    .line 96
    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    .line 97
    iput-object p4, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Landroid/content/pm/PermissionInfo;

    invoke-direct {v0}, Landroid/content/pm/PermissionInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    .line 103
    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    .line 104
    iput-object p2, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const/4 p1, 0x2

    .line 106
    iput p1, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 107
    iput p3, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    const/4 p1, 0x0

    .line 108
    iput p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    .line 109
    sget-object p1, Llibcore/util/EmptyArray;->INT:[I

    iput-object p1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    return-void
.end method

.method public static read(Ljava/util/Map;Lcom/android/modules/utils/TypedXmlPullParser;)Z
    .locals 8

    .line 136
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 137
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 140
    :cond_0
    const-string/jumbo v0, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string/jumbo v3, "package"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 142
    const-string/jumbo v4, "type"

    invoke-interface {p1, v2, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v0, :cond_6

    if-nez v3, :cond_1

    goto :goto_1

    .line 149
    :cond_1
    const-string v5, "dynamic"

    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 150
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/permission/LegacyPermission;

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 152
    iget v7, v5, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    if-eq v7, v6, :cond_4

    .line 153
    :cond_2
    new-instance v5, Lcom/android/server/pm/permission/LegacyPermission;

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    if-eqz v4, :cond_3

    const/4 v7, 0x2

    goto :goto_0

    :cond_3
    move v7, v1

    .line 154
    :goto_0
    invoke-direct {v5, v0, v3, v7}, Lcom/android/server/pm/permission/LegacyPermission;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 156
    :cond_4
    iget-object v0, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const-string/jumbo v3, "protection"

    invoke-static {p1, v2, v3, v1}, Lcom/android/server/pm/permission/LegacyPermission;->readInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    .line 158
    iget-object v0, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v3, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {v3}, Landroid/content/pm/PermissionInfo;->fixProtectionLevel(I)I

    move-result v3

    iput v3, v0, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eqz v4, :cond_5

    .line 161
    iget-object v0, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const-string v3, "icon"

    invoke-static {p1, v2, v3, v1}, Lcom/android/server/pm/permission/LegacyPermission;->readInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PermissionInfo;->icon:I

    .line 162
    iget-object v0, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    const-string v1, "label"

    invoke-interface {p1, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 164
    :cond_5
    iget-object p1, v5, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p1, p1, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p0, p1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return v6

    .line 144
    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Error in package manager settings: permissions has no name at "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x5

    .line 144
    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return v1
.end method

.method public static readInt(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;Ljava/lang/String;I)I
    .locals 0

    .line 170
    invoke-interface {p0, p1, p2, p3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/util/Set;ZZLcom/android/server/pm/DumpState;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v1, v1, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return v0

    :cond_0
    if-eqz p3, :cond_1

    .line 207
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-interface {p3, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    return v0

    :cond_1
    if-nez p5, :cond_3

    .line 211
    invoke-virtual {p6}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 212
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 214
    :cond_2
    const-string p2, "Permissions:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 216
    :cond_3
    const-string p2, "  Permission ["

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "] ("

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 217
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 218
    const-string p2, "):"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    const-string p2, "    sourcePackage="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p2, p2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    const-string p2, "    uid="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mUid:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 221
    const-string p2, " gids="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mGids:[I

    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 222
    const-string p2, " type="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 223
    const-string p2, " prot="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 224
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    invoke-static {p2}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    if-eqz p2, :cond_5

    .line 226
    const-string p2, "    perm="

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 227
    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    const/high16 p3, 0x40000000    # 2.0f

    and-int/2addr p3, p2

    if-eqz p3, :cond_4

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_5

    .line 229
    :cond_4
    const-string p2, "    flags=0x"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget p2, p2, Landroid/content/pm/PermissionInfo;->flags:I

    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string p2, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 234
    const-string p0, "    enforced="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Z)V

    :cond_6
    const/4 p0, 0x1

    return p0
.end method

.method public getPermissionInfo()Landroid/content/pm/PermissionInfo;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    return-object p0
.end method

.method public getType()I
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    return p0
.end method

.method public write(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v0, v0, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 180
    const-string v1, "item"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 181
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object v2, v2, Landroid/content/pm/PermissionInfo;->packageName:Ljava/lang/String;

    const-string/jumbo v3, "package"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->protectionLevel:I

    if-eqz v2, :cond_1

    .line 184
    const-string/jumbo v3, "protection"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    :cond_1
    iget v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 187
    const-string/jumbo v2, "type"

    const-string v3, "dynamic"

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    iget-object v2, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget v2, v2, Landroid/content/pm/PermissionInfo;->icon:I

    if-eqz v2, :cond_2

    .line 189
    const-string v3, "icon"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 191
    :cond_2
    iget-object p0, p0, Lcom/android/server/pm/permission/LegacyPermission;->mPermissionInfo:Landroid/content/pm/PermissionInfo;

    iget-object p0, p0, Landroid/content/pm/PermissionInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz p0, :cond_3

    .line 192
    const-string v2, "label"

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v0, v2, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    :cond_3
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method
