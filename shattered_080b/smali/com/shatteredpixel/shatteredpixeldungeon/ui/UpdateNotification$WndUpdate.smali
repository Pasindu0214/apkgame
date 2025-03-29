.class public Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification$WndUpdate;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;
.source "UpdateNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WndUpdate"
.end annotation


# instance fields
.field public update:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;


# direct methods
.method public constructor <init>(Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;)V
    .locals 7

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification$WndUpdate;

    iget-object v1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;->versionName:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v4, "title"

    .line 2
    invoke-static {v0, v4, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-array v4, v2, [Ljava/lang/Object;

    aput-object v1, v4, v3

    const-string v1, "versioned_title"

    invoke-static {v0, v1, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iget-object v4, p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;->desc:Ljava/lang/String;

    if-nez v4, :cond_1

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "desc"

    .line 3
    invoke-static {v0, v5, v4}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-array v2, v2, [Ljava/lang/String;

    new-array v5, v3, [Ljava/lang/Object;

    const-string v6, "button"

    .line 4
    invoke-static {v0, v6, v5}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 5
    invoke-direct {p0, v1, v4, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndOptions;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .line 6
    iput-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification$WndUpdate;->update:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;

    return-void
.end method


# virtual methods
.method public onSelect(I)V
    .locals 1

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/ui/UpdateNotification$WndUpdate;->update:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;

    .line 2
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/Updates;->service:Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/UpdateService;

    check-cast v0, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/GitHubUpdates;

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p1, Lcom/shatteredpixel/shatteredpixeldungeon/services/updates/AvailableUpdateData;->URL:Ljava/lang/String;

    invoke-static {p1}, Lcom/shatteredpixel/shatteredpixeldungeon/ui/changelist/v0_6_X_Changes;->openURI(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
