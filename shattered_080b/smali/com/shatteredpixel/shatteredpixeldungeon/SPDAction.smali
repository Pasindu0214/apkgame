.class public Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;
.super Lcom/watabou/input/GameAction;
.source "SPDAction.java"


# static fields
.field public static final BACK:Lcom/watabou/input/GameAction;

.field public static final E:Lcom/watabou/input/GameAction;

.field public static final HERO_INFO:Lcom/watabou/input/GameAction;

.field public static final INVENTORY:Lcom/watabou/input/GameAction;

.field public static final JOURNAL:Lcom/watabou/input/GameAction;

.field public static final N:Lcom/watabou/input/GameAction;

.field public static final NE:Lcom/watabou/input/GameAction;

.field public static final NONE:Lcom/watabou/input/GameAction;

.field public static final NW:Lcom/watabou/input/GameAction;

.field public static final QUICKSLOT_1:Lcom/watabou/input/GameAction;

.field public static final QUICKSLOT_2:Lcom/watabou/input/GameAction;

.field public static final QUICKSLOT_3:Lcom/watabou/input/GameAction;

.field public static final QUICKSLOT_4:Lcom/watabou/input/GameAction;

.field public static final S:Lcom/watabou/input/GameAction;

.field public static final SE:Lcom/watabou/input/GameAction;

.field public static final SEARCH:Lcom/watabou/input/GameAction;

.field public static final SW:Lcom/watabou/input/GameAction;

.field public static final TAG_ACTION:Lcom/watabou/input/GameAction;

.field public static final TAG_ATTACK:Lcom/watabou/input/GameAction;

.field public static final TAG_DANGER:Lcom/watabou/input/GameAction;

.field public static final TAG_LOOT:Lcom/watabou/input/GameAction;

.field public static final TAG_RESUME:Lcom/watabou/input/GameAction;

.field public static final W:Lcom/watabou/input/GameAction;

.field public static final WAIT:Lcom/watabou/input/GameAction;

.field public static final ZOOM_IN:Lcom/watabou/input/GameAction;

.field public static final ZOOM_OUT:Lcom/watabou/input/GameAction;

.field public static final defaultBindings:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-object v0, Lcom/watabou/input/GameAction;->NONE:Lcom/watabou/input/GameAction;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NONE:Lcom/watabou/input/GameAction;

    .line 2
    sget-object v0, Lcom/watabou/input/GameAction;->BACK:Lcom/watabou/input/GameAction;

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->BACK:Lcom/watabou/input/GameAction;

    .line 3
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "hero_info"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->HERO_INFO:Lcom/watabou/input/GameAction;

    .line 4
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "journal"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->JOURNAL:Lcom/watabou/input/GameAction;

    .line 5
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "wait"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->WAIT:Lcom/watabou/input/GameAction;

    .line 6
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "search"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SEARCH:Lcom/watabou/input/GameAction;

    .line 7
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "inventory"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->INVENTORY:Lcom/watabou/input/GameAction;

    .line 8
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "quickslot_1"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_1:Lcom/watabou/input/GameAction;

    .line 9
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "quickslot_2"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_2:Lcom/watabou/input/GameAction;

    .line 10
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "quickslot_3"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_3:Lcom/watabou/input/GameAction;

    .line 11
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "quickslot_4"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_4:Lcom/watabou/input/GameAction;

    .line 12
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "tag_attack"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_ATTACK:Lcom/watabou/input/GameAction;

    .line 13
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "tag_danger"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_DANGER:Lcom/watabou/input/GameAction;

    .line 14
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "tag_action"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_ACTION:Lcom/watabou/input/GameAction;

    .line 15
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "tag_loot"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_LOOT:Lcom/watabou/input/GameAction;

    .line 16
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "tag_resume"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_RESUME:Lcom/watabou/input/GameAction;

    .line 17
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "zoom_in"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->ZOOM_IN:Lcom/watabou/input/GameAction;

    .line 18
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "zoom_out"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->ZOOM_OUT:Lcom/watabou/input/GameAction;

    .line 19
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "n"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->N:Lcom/watabou/input/GameAction;

    .line 20
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "e"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->E:Lcom/watabou/input/GameAction;

    .line 21
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "s"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->S:Lcom/watabou/input/GameAction;

    .line 22
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "w"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->W:Lcom/watabou/input/GameAction;

    .line 23
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "ne"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NE:Lcom/watabou/input/GameAction;

    .line 24
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "se"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SE:Lcom/watabou/input/GameAction;

    .line 25
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "sw"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SW:Lcom/watabou/input/GameAction;

    .line 26
    new-instance v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;

    const-string v1, "nw"

    invoke-direct {v0, v1}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NW:Lcom/watabou/input/GameAction;

    .line 27
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x83

    .line 28
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->BACK:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x43

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->BACK:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x24

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->HERO_INFO:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x26

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->JOURNAL:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x3e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->WAIT:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x2f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SEARCH:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x25

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->INVENTORY:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x2d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_1:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_2:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x21

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_3:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x2e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->QUICKSLOT_4:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x1d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_ATTACK:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x3d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_DANGER:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_ACTION:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x42

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_LOOT:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x30

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->TAG_RESUME:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->ZOOM_IN:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->ZOOM_IN:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->ZOOM_OUT:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->N:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x16

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->E:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x14

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->S:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->W:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->WAIT:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x98

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->N:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x99

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NE:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x96

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->E:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SE:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->S:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->SW:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x94

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->W:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    const/16 v1, 0x97

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->NW:Lcom/watabou/input/GameAction;

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->BACK:Lcom/watabou/input/GameAction;

    .line 61
    sget-object v1, Lcom/watabou/input/KeyBindings;->hardBindings:Ljava/util/LinkedHashMap;

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->INVENTORY:Lcom/watabou/input/GameAction;

    .line 63
    sget-object v1, Lcom/watabou/input/KeyBindings;->hardBindings:Ljava/util/LinkedHashMap;

    const/16 v2, 0x52

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/watabou/input/GameAction;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public static getDefaults()Ljava/util/LinkedHashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/watabou/input/GameAction;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    sget-object v1, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public static loadBindings()V
    .locals 10

    :try_start_0
    const-string v0, "keybinds.dat"

    .line 1
    invoke-static {v0}, Lcom/watabou/utils/FileUtils;->bundleFromFile(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    const-string v1, "first_keys"

    .line 2
    invoke-virtual {v0, v1}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v1

    const-string v2, "second_keys"

    .line 3
    invoke-virtual {v0, v2}, Lcom/watabou/utils/Bundle;->getBundle(Ljava/lang/String;)Lcom/watabou/utils/Bundle;

    move-result-object v0

    .line 4
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->getDefaults()Ljava/util/LinkedHashMap;

    move-result-object v2

    .line 5
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 6
    invoke-static {}, Lcom/watabou/input/GameAction;->allActions()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/watabou/input/GameAction;

    .line 7
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 8
    invoke-virtual {v1, v6}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 9
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 10
    invoke-virtual {v1, v6}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 12
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_1

    .line 13
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_2
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 15
    invoke-virtual {v1, v6}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 17
    invoke-virtual {v1, v6}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_3
    :goto_1
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v6}, Lcom/watabou/utils/Bundle;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 20
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, v6}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_6

    const/4 v6, 0x0

    .line 22
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_4
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 23
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_4

    move v6, v8

    goto :goto_2

    .line 24
    :cond_5
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 25
    :cond_6
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 26
    invoke-virtual {v0, v6}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object v6, v5, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 28
    invoke-virtual {v0, v6}, Lcom/watabou/utils/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 29
    :cond_7
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_8

    .line 30
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v3, v4, v1}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 31
    :cond_9
    invoke-static {v3}, Lcom/watabou/input/KeyBindings;->setAllBindings(Ljava/util/LinkedHashMap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 32
    :catch_0
    invoke-static {}, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->getDefaults()Ljava/util/LinkedHashMap;

    move-result-object v0

    invoke-static {v0}, Lcom/watabou/input/KeyBindings;->setAllBindings(Ljava/util/LinkedHashMap;)V

    :goto_4
    return-void
.end method

.method public static saveBindings()V
    .locals 13

    .line 1
    new-instance v0, Lcom/watabou/utils/Bundle;

    invoke-direct {v0}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 2
    new-instance v1, Lcom/watabou/utils/Bundle;

    invoke-direct {v1}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 3
    new-instance v2, Lcom/watabou/utils/Bundle;

    invoke-direct {v2}, Lcom/watabou/utils/Bundle;-><init>()V

    .line 4
    invoke-static {}, Lcom/watabou/input/GameAction;->allActions()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/watabou/input/GameAction;

    .line 5
    sget-object v5, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :cond_1
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 6
    sget-object v10, Lcom/shatteredpixel/shatteredpixeldungeon/SPDAction;->defaultBindings:Ljava/util/LinkedHashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v4, :cond_1

    if-nez v7, :cond_2

    move v7, v9

    goto :goto_1

    :cond_2
    move v8, v9

    goto :goto_1

    .line 7
    :cond_3
    new-instance v5, Ljava/util/LinkedHashMap;

    sget-object v9, Lcom/watabou/input/KeyBindings;->bindings:Ljava/util/LinkedHashMap;

    invoke-direct {v5, v9}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 8
    invoke-virtual {v5}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    :cond_4
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_6

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 9
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v5, v12}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v4, :cond_4

    if-nez v6, :cond_5

    move v6, v11

    goto :goto_2

    :cond_5
    move v10, v11

    goto :goto_2

    :cond_6
    if-eq v6, v7, :cond_7

    .line 10
    iget-object v5, v4, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 11
    invoke-virtual {v1, v5, v6}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    :cond_7
    if-eq v10, v8, :cond_0

    .line 12
    iget-object v4, v4, Lcom/watabou/input/GameAction;->name:Ljava/lang/String;

    .line 13
    invoke-virtual {v2, v4, v10}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;I)V

    goto :goto_0

    :cond_8
    const-string v3, "first_keys"

    .line 14
    invoke-virtual {v0, v3, v1}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    const-string v1, "second_keys"

    .line 15
    invoke-virtual {v0, v1, v2}, Lcom/watabou/utils/Bundle;->put(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V

    :try_start_0
    const-string v1, "keybinds.dat"

    .line 16
    invoke-static {v1, v0}, Lcom/watabou/utils/FileUtils;->bundleToFile(Ljava/lang/String;Lcom/watabou/utils/Bundle;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 17
    invoke-static {v0}, Lcom/watabou/noosa/Game;->reportException(Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method
