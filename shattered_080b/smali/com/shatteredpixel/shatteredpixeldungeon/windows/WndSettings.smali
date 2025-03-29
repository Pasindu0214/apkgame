.class public Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;
.super Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;
.source "WndSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;,
        Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;
    }
.end annotation


# static fields
.field public static last_index:I


# instance fields
.field public audio:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;

.field public display:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;

.field public ui:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    const-class v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;

    invoke-direct {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;-><init>()V

    .line 2
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;->display:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$DisplayTab;

    .line 3
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 4
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;->ui:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$UITab;

    .line 5
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 6
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;

    invoke-direct {v1, p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;)V

    iput-object v1, p0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;->audio:Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$AudioTab;

    .line 7
    invoke-virtual {p0, v1}, Lcom/watabou/noosa/Group;->add(Lcom/watabou/noosa/Gizmo;)Lcom/watabou/noosa/Gizmo;

    .line 8
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$1;

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "display"

    .line 9
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10
    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$1;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 11
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$2;

    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "ui"

    .line 12
    invoke-static {v0, v4, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 13
    invoke-direct {v1, p0, v3}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$2;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    .line 14
    new-instance v1, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$3;

    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "audio"

    .line 15
    invoke-static {v0, v3, v2}, Lcom/shatteredpixel/shatteredpixeldungeon/messages/Messages;->get(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-direct {v1, p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings$3;-><init>(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->add(Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;)Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed$Tab;

    const/16 v0, 0x70

    const/16 v1, 0x8a

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->resize(II)V

    .line 18
    invoke-virtual {p0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->layoutTabs()V

    .line 19
    sget v0, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndSettings;->last_index:I

    invoke-virtual {p0, v0}, Lcom/shatteredpixel/shatteredpixeldungeon/windows/WndTabbed;->select(I)V

    return-void
.end method
