function plotdist(points, ego, idx)
    points = points'
    p1 = plot()
    scatter!(p1, points[:,1], points[:,2])
    scatter!(p1, [ego[1]], [ego[2]])
    plot!(p1, [ego[1], points[idx,:][1]], [ego[2], points[idx,:][2]])
    return p1
end