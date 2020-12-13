const aoc = @import("../aoc.zig");
const kotlin_bridge = @import("../kotlin_bridge.zig");

pub fn run(problem: *aoc.Problem, day: u16) anyerror!aoc.Solution { // TODO remove anyerror from here
    return switch (day) {
        4 => kotlin_bridge.run("2016", "04", problem),
        7 => kotlin_bridge.run("2016", "07", problem),
        9 => kotlin_bridge.run("2016", "09", problem),
        12 => kotlin_bridge.run("2016", "12", problem),
        15 => kotlin_bridge.run("2016", "15", problem),
        16 => kotlin_bridge.run("2016", "16", problem),
        18 => kotlin_bridge.run("2016", "18", problem),
        else => unreachable
    };
}